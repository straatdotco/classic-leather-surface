const logAction = ({
  kind = "button_click",
  object = "",
  data = "",
  from = ""
}) => {
  const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  return fetch(`${CLASSIC_ENV.API_URL}/action`, {
    method: "POST",
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': token
    },
    body: JSON.stringify({kind, object, data, from})
  })
}

const handleActions = (el) => () => {
  const element = el || this.el;
  if (element.dataset.gtagsendto) {
    window.gtag('event', 'conversion', { send_to: element.dataset.gtagsendto });
  }
  if (element.id) {
    const { analyticsKind, analyticsObject, analyticsFrom} = element.dataset;
    logAction({
      data: element.id,
      kind: analyticsKind,
      object: analyticsObject,
      from: analyticsFrom,
    })
  }
  
};

const Analytics = {
  mounted() {
    this.el.addEventListener("click", handleActions(this.el));
  },
};

export { Analytics };
