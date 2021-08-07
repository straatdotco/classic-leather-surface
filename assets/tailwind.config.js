module.exports = {
  important: true,
  purge: [
    "../lib/**/*.ex",
    "../lib/**/*.leex",
    "../lib/**/*.eex",
    "./js/**/*.js",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    // Overrides each property from tailwind
    screens: {
      sm: "600px",
      md: "960px",
      lg: "1280px",
      xl: "1920px",
      "2xl": "2560px",
    },
    fontFamily: {
      roboto: "Roboto, sans-serif",
      gotham: "Gotham A, sans-serif",
      apple: "-apple-system, BlinkMacSystemFont, sans-serif",
    },
    container: {
			center: true,
      screens: {
        sm: "600px",
        md: "960px",
        lg: "1280px",
      },
      padding: {
        DEFAULT: "0.75rem",
        // sm: "1.25rem",
        // md: "1.25rem",
        // lg: "2.50rem",
      },
    },
    // Extends base Tailwind classes
    extend: {
      colors: {
        primary: "#000",
        secondary: "#1E77EB",
        "primary-text": "#FFF",
        hint: "#DEDEF2",
        success: "#00B754",
        error: "#EB1E21",
        transparent: "transparent",
        white: "white",
        "gray-200": "#ECEAE9",
        "gray-400": "#BDBDBD",
        "gray-800": "#201F1F",
        "purple-200": "#DEDEF2",
      },
      minWidth: {
        "1/4": "25%",
        "1/2": "50%",
        "3/4": "75%",
      },
      maxWidth: {
        "1/4": "25%",
        "1/2": "50%",
        "3/4": "75%",
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
