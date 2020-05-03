var config =
{
    /*
        Do we want to show the image?
        Note that imageSize still affects the size of the image and where the progressbars are located.
    */
    enableImage: true,

    /*
        Relative path the the logo we want to display.
    */
    image: "img/logo.png",

    /*
        Cursor image
    */
    cursorImage: "img/cursor.png",

    /*
        How big should the logo be?
        The values are: [width, height].
        Recommended to use square images less than 1024px.
    */
    imageSize: [512, 512],

    /*
        Define the progressbar type
            0 = Single progressbar
            1 = Multiple progressbars
            2 = Collapsed progressbars
     */
    progressBarType: 2,

    /*
        Here you can disable some of progressbars.
        Only applys if `singleProgressbar` is false.
    */
    progressBars:
    {
        "INIT_CORE": {
            enabled: false, //NOTE: Disabled because INIT_CORE seems to not get called properly. (race condition).
        },

        "INIT_BEFORE_MAP_LOADED": {
            enabled: true,
        },

        "MAP": {
            enabled: true,
        },

        "INIT_AFTER_MAP_LOADED": {
            enabled: true,
        },

        "INIT_SESSION": {
            enabled: true,
        }
    },

    /*
        Loading messages will be randomly picked from the array.
        The message is located on the left side above the progressbar.
        The text will slowly fade in and out, each time with another message.
        You can use UTF-8 emoticons inside loading messages!
    */
    loadingMessages:
    [
        "Ramassage des escargots... &#x1f40c;",
        "Placement des escargots sur la carte... &#x1f40c;",
        "Ecrasement d'un escargot.... &#x1f40c; &#x1f528;",
        "Piétinement d'un escargot.... &#x1f40c; &#x1f462;",
        "Replacement des limaces dans leur coquille.. &#x1f41a.",
        "Joue au cricket avec un escargot... &#x1f3cf",
        "Développement de l'IA des escargots... &#x1f9e0;",
        "Vend des escargots à un français... &#x1f956;",
        "Dégustation de l'escargot de FiveM... &#x1f374;",
        "Apprends un escargot à conduire... &#x1f697;",
        "Joue au Golf avec un escargot... &#x1f3cc;",
        "Appelle la SPA pour violence animale... &#x1f4f1;",
        "Aucun escargot n'a été blessé pendant ce chargement &#x1f691;",
    ],

    /*
        Rotate the loading message every 5000 milliseconds (default value).
    */
    loadingMessageSpeed: 5 * 1000,

    /*
        Array of music id's to play in the loadscreen.
        Enter your youtube video id's here. In order to obtain the video ID
        Take whats after the watch?v= on a youtube link.
        https://www.youtube.com/watch?v=<videoid>
        Do not include the playlist id or anything, it should be a 11 digit code.

        Do not use videos that:
            - Do not allow embedding.
            - Copyrighted music (youtube actively blocks this).
    */
    music:
    [
        "VtguFyOdj2g","m22k4h8jOf0","lrG7FEc3bS8",
        "awnJsu7owGA","PJIKigzBNw0","F1Vx-9TUyzA",
        "7P_qvg3wL5o","0hEYvdMoF2g","jqE8M2ZnFL8",
        "SNE2oCZH_4k","nw7DLUMwof8","BE-1aUji4XY",
        "N3zf9q8mbWs"
    ],


    /*
        Set to false if you do not want any music.
    */
    enableMusic: true,

    /*
        Default volume for the player. Please keep this under 50%, to not blowout someones eardrums x)
     */
    musicVolume: 20,

    /*
        Should the background change images?
        True: it will not change backgrounds.
        False: it will change backgrounds.
    */
    staticBackground: false,

    /*
        Array of images you'd like to display as the background.
        Provide a path to a local image, using images via url is not recommended.
    */
    background:
    [
        "img/bg1.jpg",
        "img/bg2.jpg",
        "img/bg3.jpg",
        "img/bg4.jpg",
        "img/bg5.jpg",
        "img/bg6.jpg",
        "img/bg7.jpg",
        "img/bg8.jpg",
    ],

    /*
        Time in milliseconds on how fast the background
        should swap images.
     */
    backgroundSpeed: 10 * 1000,

    /*
        Which style of animation should the background transition be?
        zoom = background zooms in and out.
        slide = transtion backgrounds from sliding right and back again.
        fade = fade the background out and back in.
    */
    backgroundStyle: "zoom",

    /*
        An on-screen logger, for indicating breaking bugs! :(
        Should we enable the on-screen logger? Handy for debugging or indicating errornous behaviour!
    */
    enableLog: true,
}
