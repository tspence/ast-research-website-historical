//******************************************************************************
// cpanel.java:	Applet
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
	private Thread	 m_cpanel = null;

	//--------------------------------------------------------------------------
	private Graphics  m_Graphics;
	private Image	  m_Menu[];
	private Image	  m_Items[][][];
    private Image     m_Icon;
    private Rectangle m_TabRect[];
    private Rectangle m_ItemRect[];
	private boolean   m_fAllLoaded = false;
	private int       m_Pos = -1;
    private int       m_Hilite = -1;
    private int       m_MaxHeights[];
    private int       m_Heights[];
    private int       m_Rates[];
    private long      m_LastMessage = 0;
    private String    m_Message;

	//--------------------------------------------------------------------------
    private int Y_START = 0;
    private int Y_SPACING = 2;
    private int Y_EDGE = 1;

    private int APPLET_WIDTH = 121;
    private int APPLET_HEIGHT = 500;

    private int TAB_HEIGHT = 0;
    private int TEXT_HEIGHT = 0;

    private String m_IconName;
    private String m_ImageDirectory;
    private String m_MenuNames[];
    private String m_ItemNames[][];

	//--------------------------------------------------------------------------
	public cpanel()
	{
	}

    //--------------------------------------------------------------------------
	public String getAppletInfo()
	{
		return "  Name: CPanel\r\n" +
		       "Author: Ted Spence\r\n" +
		       "        AST Research, Inc. (C) 1997";
	}

    //--------------------------------------------------------------------------
	public void init()
	{
    	resize(APPLET_WIDTH, APPLET_HEIGHT);
	}

	//-------------------------------------------------------------------------
	public void destroy()
	{
	}

    //--------------------------------------------------------------------------
	private void drawTab(int Tab, Graphics g, int y)
    {
        // Draw only the tab
        g.fillRect(0,y,APPLET_WIDTH,Y_EDGE);
        g.drawImage(m_Menu[Tab],0,y + Y_EDGE,null);
        g.fillRect(0,y + Y_EDGE + m_Menu[Tab].getHeight(null),APPLET_WIDTH,Y_EDGE + 1);
        m_TabRect[Tab].reshape(0,y,m_Menu[Tab].getWidth(null),m_Menu[Tab].getHeight(null) + Y_SPACING);
    }

    //--------------------------------------------------------------------------
	private void drawOpenTab(int Tab, Graphics g, int y)
    {
        int j, hi;

        // First draw the overall tab
        g.fillRect(0,y,APPLET_WIDTH,Y_EDGE);
        g.drawImage(m_Menu[Tab],0,y + Y_EDGE,null);
        m_TabRect[Tab].reshape(0,y,m_Menu[Tab].getWidth(null),m_Menu[Tab].getHeight(null) + Y_SPACING);
        y = y + m_Menu[Tab].getHeight(null) + Y_SPACING;
        g.fillRect(0,y - Y_EDGE,APPLET_WIDTH,Y_EDGE + 1);

        // Now draw all the sub menu items for this tab
        for (j = 0;j < m_Items[Tab].length;j++) {

            // Figure out if we shoult hilite this image
            if (m_Hilite == j)
                hi = 1;
            else
                hi = 0;

            // Draw the menu item, hilited or not
            if (m_Items[Tab][j][hi] != null) {
                g.fillRect(0,y,APPLET_WIDTH,Y_EDGE);
                g.drawImage(m_Items[Tab][j][hi],0,y + Y_EDGE,null);
                m_ItemRect[j].reshape(0,y,m_Items[Tab][j][hi].getWidth(null),m_Items[Tab][j][hi].getHeight(null) + Y_SPACING);
                y = y + m_Items[Tab][j][hi].getHeight(null) + Y_SPACING;
                g.fillRect(0,y - Y_EDGE,APPLET_WIDTH,Y_EDGE + 1);
            } else {
                m_ItemRect[j].reshape(0,0,0,0);
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
        y = Y_START;

		// Draw all the menus
        for (i = 0;i < m_Menu.length;i++) {

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

        // Clear the rest of the panel to black
        g.setColor(Color.black);
        g.fillRect(0,y,APPLET_WIDTH,APPLET_HEIGHT);
	}

	// cpanel Paint Handler
	//--------------------------------------------------------------------------
	public void paint(Graphics g)
	{
        // Clear the applet to black
        g.setColor(Color.black);
        g.fillRect(0,0,APPLET_WIDTH,APPLET_HEIGHT);

		// Only draw the screen if we've loaded all the images
        if (m_fAllLoaded) {
            g.drawImage(m_Icon,0,Y_EDGE,null);
            Y_START = m_Icon.getHeight(null) + 8;
            redrawPanel(g);
        } else {
            g.setColor(Color.white);
            g.drawString(m_Message, 10, 20);
        }
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
        int i, j, n, menus = 1;

        // Separate out this comma-delimited list
        m_IconName = getParameter("icon");
        m_ImageDirectory = getParameter("dir");
        s = getParameter("menu");

        // Count the number of menus
        for (i = 0;i < s.length();i++)
            if (s.charAt(i) == ',') menus++;
        m_MenuNames = new String[menus];
        m_ItemNames = new String[menus][10];

        // Set the menus
        i = 0;
        while (s.indexOf(',') > 0) {
            m_MenuNames[i] = s.substring(0,s.indexOf(','));
            s = s.substring(s.indexOf(',') + 1);
            i++;
        }
        m_MenuNames[i] = s;

        // Now load the submenus
        for (i = 0;i < m_MenuNames.length;i++) {
            s = getParameter("menu" + Integer.toString(i + 1));

            // Load in these menus
            j = 0;
            while (s.indexOf(',') > 0) {
                m_ItemNames[i][j] = s.substring(0,s.indexOf(','));
                s = s.substring(s.indexOf(',') + 1);
                j++;
            }

            // Add the last one if there is one
            if (s.length() > 0) m_ItemNames[i][j] = s;
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

            // Give us an image count
            m_Message = "Loading control panel...";

            // Start creating all our variables
    		repaint();
    		m_Graphics   = getGraphics();
    		m_Menu       = new Image[m_MenuNames.length];
            m_TabRect    = new Rectangle[m_MenuNames.length];
            m_ItemRect   = new Rectangle[10];
            m_Items      = new Image[m_MenuNames.length][10][2];
            m_MaxHeights = new int[m_MenuNames.length];
            m_Heights    = new int[m_MenuNames.length];
            m_Rates      = new int[m_MenuNames.length];

            // Initialize the hot rectangles
    		for (i = 0; i < 10; i++)
                m_ItemRect[i] = new Rectangle(0,0,0,0);

            // Load in all the images
    		MediaTracker tracker = new MediaTracker(this);
    		String strImage, strImageHigh;

            // Load the snappy logo icon
            m_Icon = getImage(getDocumentBase(),m_ImageDirectory + "icon_" + m_IconName + ".GIF");
            tracker.addImage(m_Icon, 1);

    		// Load all the menu images
    		for (i = 0; i < m_MenuNames.length; i++) {
    			strImage = m_ImageDirectory + "tab_" + m_MenuNames[i] + ".GIF";
			    m_Menu[i] = getImage(getDocumentBase(), strImage);
                m_TabRect[i] = new Rectangle(0,0,0,0);
                tracker.addImage(m_Menu[i], 1);
    		}

    		// Wait until all images are fully loaded
            try {
				tracker.waitForID(1);
				m_fAllLoaded = !tracker.isErrorAny();
			}

            // Deal with an error that may arise
			catch (InterruptedException e) {
			    m_Graphics.drawString("Error waiting for images!", 10, 40);

                stop();
                return;
			}
			
    		// What happens if we can't retrieve these images?
			if (!m_fAllLoaded) {
    			m_Graphics.drawString("Error loading graphics.", 10, 40);
                return;
            } else {
                TAB_HEIGHT = m_Menu[0].getHeight(null);
            }

            // Redraw the screen now that we've got images to deal with
            repaint();

    		// Load all the menu text
    		for (i = 0; i < m_MenuNames.length; i++) {
                j = 0;
                while (m_ItemNames[i][j] != null) {
    			    strImage = m_ImageDirectory + "text_" + m_ItemNames[i][j] + ".gif";
    			    strImageHigh = m_ImageDirectory + "text_" + m_ItemNames[i][j] + "_h.gif";
			        m_Items[i][j][0] = getImage(getDocumentBase(), strImage);
                    m_Items[i][j][1] = getImage(getDocumentBase(), strImageHigh);
                    tracker.addImage(m_Items[i][j][0], 2);
                    tracker.addImage(m_Items[i][j][1], 2);
                    j++;
                }
    		}

            // Now attempt to load the rest of the images
            try {
			    tracker.waitForID(2);
                if (!tracker.isErrorAny()) {
                    TEXT_HEIGHT = m_Items[0][0][0].getHeight(null);

                    // Count the number of menu items and spaces
                    for (i = 0;i < m_Menu.length;i++) {
                        j = 0;
                        while (m_ItemNames[i][j] != null) j++;
                        m_MaxHeights[i] = (j) * (TEXT_HEIGHT + Y_SPACING);
                        m_Rates[i] = (m_MaxHeights[i] / 10) + 1;
                    }
                }
		    }

            // Deal with an error that may arise
		    catch (InterruptedException e) {
			    m_Graphics.drawString("Error waiting for images!", 10, 40);

                stop();
                return;
		    }
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
        String s;

        try {

            // Check to see if the user hit something
            p = -1;
            for (i = 0;i < m_Menu.length;i++)
                if (m_TabRect[i].inside(x,y)) {
                    s = m_MenuNames[i] + "/default.html";
                    getAppletContext().showDocument(new URL(getCodeBase(),s),"body");
                }
        
            // Check to see if we should hilite a menu item
            for (i = 0;i < m_Items[m_Pos].length;i++)
                if (m_ItemRect[i].inside(x,y)) {
                    s = m_MenuNames[m_Pos] + "/" + m_ItemNames[m_Pos][i] + "/default.html";
                    getAppletContext().showDocument(new URL(getCodeBase(),s),"body");
                }
        }
        catch (MalformedURLException e) {
            // Whee
        }

        return true;
	}

	//--------------------------------------------------------------------------
	public boolean mouseUp(Event evt, int x, int y)
	{
		return true;
	}

	//--------------------------------------------------------------------------
	public boolean mouseDrag(Event evt, int x, int y)
	{
		return true;
	}

	//--------------------------------------------------------------------------
	public boolean mouseMove(Event evt, int x, int y)
	{
        int i, j, p;
        long startclock;
        Date now = new Date();

        // Kick out if we're not done loading
        if (!m_fAllLoaded) return true;

        // Kick out if it's too soon to jump again
        if (now.getTime() <= m_LastMessage + 20)
            return true;
        m_LastMessage = now.getTime();

        // Check to see if the user hit something
        p = -1;
        for (i = 0;i < m_Menu.length;i++)
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
                startclock = now.getTime();

                // Decrease all other heights
                for (j = 0;j < m_Menu.length;j++)
                    if ((m_Heights[j] > 0) && (m_Pos != j))
                        m_Heights[j] = Math.max(0,m_Heights[j] - m_Rates[j]);

                // Redraw the screen
                m_Heights[m_Pos] = Math.min(m_Heights[m_Pos] + m_Rates[m_Pos],m_MaxHeights[m_Pos]);
                redrawPanel(m_Graphics);
			    try {
				    Thread.sleep(Math.max(0,startclock + 12 - now.getTime()));
			    }
			    catch (InterruptedException e) {
				    stop();
			    }
            }
        }

        // Check to see if we should hilite a menu item
        try {
            p = -1;
            if (m_Pos > -1) {
                for (i = 0;i < m_Items[m_Pos].length;i++)
                    if (m_ItemRect[i].inside(x,y))
                        p = i;

                // If we hit any of the menu items
                if ((p > -1) && (p != m_Hilite)) {
                
                    // Turn off the old hilite
                    if (m_Hilite != -1)
                        m_Graphics.drawImage(m_Items[m_Pos][m_Hilite][0],m_ItemRect[m_Hilite].x,m_ItemRect[m_Hilite].y + Y_EDGE,null);

                    // Turn on the new hilite
                    m_Graphics.drawImage(m_Items[m_Pos][p][1],m_ItemRect[p].x,m_ItemRect[p].y + Y_EDGE,null);
                    m_Hilite = p;
                }
            }
        }
        catch (NullPointerException e) {
        }

        // Stop the clock
        m_LastMessage = now.getTime();
        return true;
	}

	//--------------------------------------------------------------------------
	public boolean mouseEnter(Event evt, int x, int y)
	{
		return true;
	}

	//--------------------------------------------------------------------------
	public boolean mouseExit(Event evt, int x, int y)
	{
		return true;
	}
}
