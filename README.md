# Final Project - Intermediate Written Submission

---

### **My Written Plan for Ruby on Rails Project**

### **Model Classes, Attributes, and Validations**

- **Album Model**
    - Attributes:
        - **`name`** (string): The name of the album.
        - **`artist`** (string): The name of the artist for the album.
    - Validations:
        - **`name`** must be present and unique for each album.
        - **`artist`** must be present for each album.
    - Associations:
        - An **`Album`** has many **`Songs`**.
- **Song Model**
    - Attributes:
        - **`title`** (string): The title of the song.
        - **`duration`** (integer): The length of the song in seconds.
        - **`album_id`** (integer): A reference to the **`Album`**.
    - Validations:
        - **`title`** of the song must be present.
        - **`duration`** of the song must be a positive integer.
    - Associations:
        - A **`Song`** belongs to an **`Album`**.

### **Plan to Implement Sorting**

To implement sorting, I can use query parameters to specify the sort field and direction. In my controller, I can then sort the data based on these parameters.

For sorting **`Albums`** by name or artist, consider the following:

- **Controller Logic**
    - The **`index`** action should accept sorting parameters (**`sort_by`** and **`order`**) and apply them to the query.
    - If **`sort_by`** is not provided, default to a specific sort (like **`name`**).
    - If **`order`** is not provided, default to ascending order.
- **Client-Side Feature**
    - In the index view, add links or buttons to change the sorting order by clicking the column name of the albums.
    - Use query parameters to specify the sorting criteria for the albums.
- **JavaScript Functionality**
    - JavaScript might not be necessary for this basic sorting feature since Rails can handle the sorting logic with query parameters.
    - If desired, I could add JavaScript for additional interactivity, like dynamic page updates or animations for the albums.
 
    - # Model Class for Album
Class Album:
    # Attributes
    String name
    String artist

    # Validations
    Validate presence of name
    Validate presence of artist
    Validate uniqueness of name

    # Associations
    Has many Songs

# Model Class for Song
Class Song:
    # Attributes
    String title
    Integer duration
    Reference album_id  # Reference to Album

    # Validations
    Validate presence of title
    Validate positive integer for duration

    # Associations
    Belongs to Album
    
# Controller for Album
Class AlbumsController:

    # Index Action for Listing Albums
    Method index:
        # Retrieve sort parameters
        String sort_by = If (params contains 'sort_by') Then params['sort_by'] Else 'name'
        String order = If (params contains 'order') Then params['order'] Else 'asc'

        # Retrieve albums with optional search and sorting
        If (params contains 'search'):
            albums = Find Albums where name contains params['search'] 
            Order albums by sort_by and order
        Else:
            albums = Find all Albums 
            Order albums by sort_by and order

    # Show Action for Displaying a Single Album
    Method show:
        album = Find Album by params['id']

# Home Page 
was added
# Index Page for Album
HTML:
    # Search Form
    Form with GET method to albums_path:
        Label for Search
        Text Field for 'search' with value from params['search']
        Submit button for Search

    # Table for Albums
    Table:
        # Table Header for Sorting
        Table Row:
            Table Header with link to sort by 'name'
            Table Header with link to sort by 'artist'

        # Table Content
        For each album in albums:
            Table Row:
                Table Data with link to album's show page displaying album name
                Table Data displaying album artist

# Show Page for Album
HTML:
    # Display Album Details
    Heading displaying album name and artist

    # List of Songs for the Album
    Heading for "Songs"
    Unordered List:
        For each song in album's songs:
            List Item displaying song title and duration


