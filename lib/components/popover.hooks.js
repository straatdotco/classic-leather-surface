import { createPopper } from "@popperjs/core";

const Popover = {
  mounted() {
    const popoverParent = this.el;
    const popoverTrigger = this.el.children[0];
    const popoverContent = this.el.children[1];

    const popperInstance = createPopper(popoverTrigger, popoverContent, {
      placement: this.el.dataset.placement,
    });

    function show() {
      popoverParent.classList.add("popover-active");
      popoverContent.setAttribute("data-show", "");
      popperInstance.update();
    }

    function hide() {
      popoverParent.classList.remove("popover-active");
      popoverContent.removeAttribute("data-show");
    }

    if (this.el.dataset.event === "hover") {
      const showEvents = ["mouseenter", "focus"];
      const hideEvents = ["mouseleave", "blur"];

      showEvents.forEach((event) => {
        popoverTrigger.addEventListener(event, show);
      });

      hideEvents.forEach((event) => {
        popoverTrigger.addEventListener(event, hide);
      });
    } else if (this.el.dataset.event === "click") {
      const outsideClickListener = (e) => {
        if (e.target !== popoverContent && !popoverContent.contains(e.target)) {
          hideAfterClick();
        }
      };

      const hideAfterClick = () => {
        hide();
        window.removeEventListener("click", outsideClickListener);
      };

      popoverTrigger.addEventListener("click", () => {
        // Popover is opened, then close
        if (popoverContent.hasAttribute("data-show")) {
          hideAfterClick();
        } else {
          show();
          // Add listeners on next tick
          setTimeout(() => {
            window.addEventListener("click", outsideClickListener);
          }, 0);
        }
      });
    }
  },
};

export { Popover };
