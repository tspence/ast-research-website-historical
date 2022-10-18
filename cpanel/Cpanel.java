//******************************************************************************
// cpanel.java:    Applet
//
//******************************************************************************
import java.applet.*;
import java.awt.*;
import java.net.*;
import java.util.Date;



//==============================================================================
// Main Class for applet cpanel
//
//==============================================================================
public class cpanel extends Applet implements Runnable
{
    //--------------------------------------------------------------------------
    // These are the standard variables
    //--------------------------------------------------------------------------
    private Thread      m_cpanel = null;
    private Graphics  m_Graphics;
    private Image     m_Icon;
    private String    m_IconName;
    private String    m_HtmlName;
    private boolean   m_fAllLoaded = false;
    private int       m_Pos = -1;
    private int       m_Hilite = -1;
    private long      m_LastMessage;
    private String    m_Message;
    private Image     m_DoubleBuffer;

    //--------------------------------------------------------------------------
    // These are the menu images, names, hit-rects, sizes, and counts
    //--------------------------------------------------------------------------
    private int       m_NumMenus;
    private int       m_NumItems[];
    private String    m_ImageDirectory;
    private String    m_MenuNames[];
    private String    m_ItemNames[][];
    private Image      m_Menu[];
    private Image      m_Items[][][];
    private Rectangle m_TabRect[];
    private Rectangle m_ItemRect[];
    private int       m_MaxHeights[];
    private int       m_Heights[];

    //--------------------------------------------------------------------------
    // Constants
    //--------------------------------------------------------------------------
    private int ICON_HEIGHT = 0;
    private int Y_SPACING   = 2;
    private int Y_EDGE      = 1;

    private int APPLET_WIDTH;
    private int APPLET_HEIGHT;

    private int TAB_WIDTH   = 116;
    private int TAB_HEIGHT  = 16;
    private int TEXT_WIDTH  = 122;
    private int TEXT_HEIGHT = 12;

    private int TIMING      = 20;

    //--------------------------------------------------------------------------
    public cpanel()
    {
    }

    //--------------------------------------------------------------------------
    public String getAppletInfo()
    {
        return "   Name: CPanel\r\n" +
               " Author: Ted Spence\r\n" +
               " Design: Jesse Morgan / Ted Spence\r\n" +
               "Artwork: Jesse Morgan\r\n" +
               "         AST Interactive Marketing\r\n" +
               "         AST Research, Inc. (C) 1997-8\r\n" +
               "         ted.spence@ast.com / jesse.morgan@ast.com";
    }

    //-------------------------------------------------------------------------
    public void destroy()
    {
    }

    //--------------------------------------------------------------------------
    private void drawTab(int Tab, Graphics g, int y)
    {
        // Draw only the tab
        g.drawImage(m_Menu[Tab],0,y + Y_EDGE,null);
        m_TabRect[Tab].reshape(0,y,TAB_WIDTH,TAB_HEIGHT + Y_SPACING);
    }

    //--------------------------------------------------------------------------
    private void drawOpenTab(int Tab, Graphics g, int y)
    {
        int j, hi;

        // First draw the overall tab
        g.drawImage(m_Menu[Tab],0,y + Y_EDGE,null);
        m_TabRect[Tab].reshape(0,y,TAB_WIDTH,TAB_HEIGHT + Y_SPACING);
        y = y + TAB_HEIGHT + Y_SPACING;

        // Now draw all the sub menu items for this tab
        for (j = 0;j < m_NumItems[Tab];j++) {

            // Figure out if we shoult hilite this image
            if (m_Hilite == j)
                hi = 1;
            else
                hi = 0;

            // Draw the menu item, hilited or not
            if (m_Items[Tab][j][hi] != null) {
                g.drawImage(m_Items[Tab][j][hi],0,y + Y_EDGE,null);
                m_ItemRect[j].reshape(0,y,TEXT_WIDTH,TEXT_HEIGHT + Y_SPACING);
                y = y + TEXT_HEIGHT + Y_SPACING;
            }
        }
    }

    //--------------------------------------------------------------------------
    private void redrawPanel(Graphics g)
    {
        int y, basey, i;
        Graphics gMenu;

        // Kick out if we don't have our images
        if (!m_fAllLoaded)
            return;

        // Start off the positioning
        y = ICON_HEIGHT;

        // Draw all the menus
        for (i = 0;i < m_NumMenus;i++) {

            // Create a clipping rectangle for this item
            basey = y;
            gMenu = g.create();
            gMenu.clipRect(0,basey,APPLET_WIDTH,m_Heights[i] + TAB_HEIGHT + Y_SPACING);

            // Draw the tab within this clipping rectangle
            if (m_Heights[i] > 0)
                drawOpenTab(i,gMenu,y);
            else
                drawTab(i,gMenu,y);

            // Prepare the position for the next tab
            y = y + m_Heights[i] + TAB_HEIGHT + Y_SPACING;
        }
    }

    // cpanel Paint Handler
    //--------------------------------------------------------------------------
    public void paint(Graphics g)
    {
        Graphics db = m_DoubleBuffer.getGraphics();

        // Clear the applet to black
        db.setColor(Color.black);
        db.fillRect(0,0,APPLET_WIDTH,APPLET_HEIGHT);

        // Only draw the screen if we've loaded all the images
        if (m_fAllLoaded) {
            db.drawImage(m_Icon,0,Y_EDGE,null);
            redrawPanel(db);
        } else {
            db.setColor(Color.white);
            db.drawString(m_Message, 10, 20);
        }

        // Paint the buffer to the screen
        g.drawImage(m_DoubleBuffer,0,0,null);
    }

    //--------------------------------------------------------------------------
    public void start()
    {
        if (m_cpanel == null)
        {
            m_cpanel = new Thread(this);
            m_cpanel.start();
        }
    }
    
    //--------------------------------------------------------------------------
    public void stop()
    {
        if (m_cpanel != null) {
            m_cpanel.stop();
            m_cpanel = null;
        }
    }

    //--------------------------------------------------------------------------
    public void LoadParameters()
    {
        String s, s2;
        int i, j, n;

        // Set the width and height of this object
        APPLET_WIDTH = this.size().width;
        APPLET_HEIGHT = this.size().height;

        // Separate out this comma-delimited list
        m_IconName = getParameter("icon");
        m_HtmlName = getParameter("html");
        m_ImageDirectory = getParameter("dir");
        s = getParameter("menu");

        // Count the number of menus
        m_NumMenus = 1;
        for (i = 0;i < s.length();i++)
            if (s.charAt(i) == ',') m_NumMenus++;
        m_NumItems = new int[m_NumMenus];

        // Allocate space for the names
        m_MenuNames = new String[m_NumMenus];
        m_ItemNames = new String[m_NumMenus][10];

        // Set the menus
        i = 0;
        while (s.indexOf(',') > 0) {
            m_MenuNames[i] = s.substring(0,s.indexOf(','));
            s = s.substring(s.indexOf(',') + 1);
            i++;
        }
        m_MenuNames[i] = s;

        // Now load the submenus
        for (i = 0;i < m_NumMenus;i++) {
            s = getParameter("menu" + Integer.toString(i + 1));

            // Load in these menus
            j = 0;
            while (s.indexOf(',') > 0) {
                m_ItemNames[i][j] = s.substring(0,s.indexOf(','));
                s = s.substring(s.indexOf(',') + 1);
                j++;
            }

            // Add the last one if there is one
            if (s.length() > 0) m_ItemNames[i][j++] = s;
            m_NumItems[i] = j;
        }
    }

    //--------------------------------------------------------------------------
    public void LoadImages()
    {
        MediaTracker tracker = new MediaTracker(this);
        Image tabs, text, texthigh;
        Graphics g;
        int i, j, y;

        // Start creating all our variables
        m_Graphics   = getGraphics();
        m_Menu       = new Image[m_NumMenus];
        m_TabRect    = new Rectangle[m_NumMenus];
        m_ItemRect   = new Rectangle[10];
        m_Items      = new Image[m_NumMenus][10][2];
        m_MaxHeights = new int[m_NumMenus];
        m_Heights    = new int[m_NumMenus];

        // Initialize the hot rectangles - 10 items max, m_NumMenus tabs
        for (i = 0; i < m_NumMenus; i++)
            m_TabRect[i] = new Rectangle(0,0,0,0);
        for (i = 0; i < 10; i++)
            m_ItemRect[i] = new Rectangle(0,0,0,0);

        // Load the snappy logo icon
        m_Icon   = getImage(getDocumentBase(),m_ImageDirectory + "icon_" + m_IconName + ".GIF");
        tabs     = getImage(getDocumentBase(),m_ImageDirectory + "tabs.gif");
        text     = getImage(getDocumentBase(),m_ImageDirectory + "text.gif");
        texthigh = getImage(getDocumentBase(),m_ImageDirectory + "text_h.gif");
        tracker.addImage(m_Icon, 1);
        tracker.addImage(tabs, 1);
        tracker.addImage(text, 1);
        tracker.addImage(texthigh, 1);

        // Now attempt to load the rest of the images
        try {
            tracker.waitForAll();
            if (tracker.isErrorAny()) {
                stop();
                return;
            }
        }

        // Deal with an error that may arise
        catch (InterruptedException e) {
            stop();
            return;
        }

        // Retrieve the height of the icon
        ICON_HEIGHT = m_Icon.getHeight(null) + 8;

        // Strip the tab file into real images
        y = 0;
        for (i = 0;i < m_NumMenus;i++) {
            m_Menu[i] = createImage(TAB_WIDTH,TAB_HEIGHT);
            m_Menu[i].getGraphics().drawImage(tabs,0,-y,null);
            y += TAB_HEIGHT;
        }

        // Strip the text and highlight files into real images
        y = 0;
        for (i = 0;i < m_NumMenus;i++) {
            for (j = 0;j < m_NumItems[i];j++) {
                m_Items[i][j][0] = createImage(TEXT_WIDTH,TEXT_HEIGHT);
                m_Items[i][j][1] = createImage(TEXT_WIDTH,TEXT_HEIGHT);
                m_Items[i][j][0].getGraphics().drawImage(text,0,-y,null);
                m_Items[i][j][1].getGraphics().drawImage(texthigh,0,-y,null);
                y += TEXT_HEIGHT;
            }
        }

        // Count the height of each menu
        for (i = 0;i < m_NumMenus;i++) {
            j = 0;
            while (m_ItemNames[i][j] != null) j++;
            m_MaxHeights[i] = (j) * (TEXT_HEIGHT + Y_SPACING);
        }
    }

    //--------------------------------------------------------------------------
    public void run()
    {
        int i, j;

        // If re-entering the page, then the images have already been loaded.
        if (!m_fAllLoaded) {

            // Load all our parameters
            LoadParameters();

            // Create the double buffer
            m_DoubleBuffer = createImage(APPLET_WIDTH, APPLET_HEIGHT);

            // Set up the "loading" message
            m_Message = "Loading control panel...";
            repaint();

            // Actually load in all the images
            LoadImages();

            // Redraw the whole panel with real graphics
            m_fAllLoaded = true;
            repaint();
        }        

        // Now do nothing while we wait for the end
        while (true) {
            try {
                Thread.sleep(500);
            }
            catch (InterruptedException e) {
                stop();
            }
        }
    }

    //--------------------------------------------------------------------------
    public boolean mouseDown(Event evt, int x, int y)
    {
        int i, p;
        Rectangle r = new Rectangle(0,0,APPLET_WIDTH,ICON_HEIGHT);
        String s;

        try {

            // If they hit the icon, go do something
            if (r.inside(x,y)) {
                getAppletContext().showDocument(new URL(getCodeBase(),getParameter("icon_url")),"body");
                return true;
            }

            // Check to see if the user hit something
            p = -1;
            for (i = 0;i < m_NumMenus;i++)
                if (m_TabRect[i].inside(x,y)) {
                    s = m_MenuNames[i] + m_HtmlName;
                    getAppletContext().showDocument(new URL(getCodeBase(),s),"body");
                    return true;
                }
    
            // Check to see if we should hilite a menu item
            for (i = 0;i < m_NumItems[m_Pos];i++)
                if (m_ItemRect[i].inside(x,y)) {
                    s = m_MenuNames[m_Pos] + "/" + m_ItemNames[m_Pos][i] + m_HtmlName;
                    getAppletContext().showDocument(new URL(getCodeBase(),s),"body");
                    return true;
                }
        }
        catch (MalformedURLException e) {
            stop();
        }

        return true;
    }

    //--------------------------------------------------------------------------
    public boolean mouseUp(Event evt, int x, int y)
    {
        return true;
    }

    //--------------------------------------------------------------------------
    public boolean mouseMove(Event evt, int x, int y)
    {
        int i, j, p;
        long startclock;

        // Kick out if we're not done loading
        if (!m_fAllLoaded) return true;

        // Kick out if it's too soon to jump again to another menu
        if (evt.when > m_LastMessage + 375) {

            // Check to see if the user hit something
            p = -1;
            for (i = 0;i < m_NumMenus;i++)
                if (m_TabRect[i].inside(x,y)) 
                    p = i;
        
            // Check to see if we take action
            if ((p != -1) && (p != m_Pos)) {
                m_Pos = p;
                m_Hilite = -1;

                // Clear out the hit rectangles
                for (i = 0;i < 10;i++)
                    m_ItemRect[i].reshape(0,0,0,0);

                // Slowly open the menu
                for (i = 0;i < 10;i++) {

                    // Reset the clock
                    startclock = new Date().getTime();

                    // Decrease all other heights
                    for (j = 0;j < m_NumMenus;j++)
                        if ((m_Heights[j] > 0) && (m_Pos != j))
                            m_Heights[j] = m_MaxHeights[j] * (9 - i) / 10;

                    // Redraw the screen and stop the clock
                    m_Heights[m_Pos] = m_MaxHeights[m_Pos] * (i + 1) / 10;
                    paint(m_Graphics);
                    try {
                        Thread.sleep(Math.max(0,startclock + TIMING - new Date().getTime()));
                    }
                    catch (InterruptedException e) {
                        stop();
                    }
                }

                // Kick out completely
                m_LastMessage = new Date().getTime();
                return true;
            }
        }

        // Check to see if we should hilite a menu item
        p = -1;
        if (m_Pos > -1) {
            for (i = 0;i < m_NumItems[m_Pos];i++)
                if (m_Items[m_Pos][i][0] != null)
                    if (m_ItemRect[i].inside(x,y))
                        p = i;

            // If we hit any of the menu items
            if ((p > -1) && (p != m_Hilite)) {
        
                // Turn off the old hilite
                if (m_Hilite != -1) {
                    m_Graphics.fillRect(m_ItemRect[m_Hilite].x,m_ItemRect[m_Hilite].y,m_ItemRect[m_Hilite].width,m_ItemRect[m_Hilite].height);
                    m_Graphics.drawImage(m_Items[m_Pos][m_Hilite][0],m_ItemRect[m_Hilite].x,m_ItemRect[m_Hilite].y + Y_EDGE,null);
                }

                // Turn on the new hilite
                m_Graphics.drawImage(m_Items[m_Pos][p][1],m_ItemRect[p].x,m_ItemRect[p].y + Y_EDGE,null);
                m_Hilite = p;
            }
        }

        return true;
    }
}
