console.log("JS is running...");

// This script fetches the events data from the backend regarding our search options
// It also disables the search option as long as the data is fetched from the backend, preventing multiple ajax request
// When finished with the fetching the search option is reenabled and in the meantime the script renders a nice loading gif with a cat :-)

$(document).ready(() => {
  $("#search-filter").on("change", (e) => {
    $('#search-filter').attr('disabled', true)
    $("#events-content").empty();
    $("#events-content").append('<img src="/img/loading.gif"></img>');
    const host = window.location.host;
    const filterType = e.target.value;
    const filterTypeUpper =
      filterType.charAt(0).toUpperCase() + filterType.slice(1);

    $("#filter-type-heading").html(`Filter: ${filterTypeUpper}`);

    $.ajax({
      type: "GET",
      url: `http://${host}/filter/${filterType}`,

      dataType: "json",
      success: function (response) {
        const events = response.events;
        console.log(events);
        $("#events-content").empty();
        if (events.length === 0) {
          console.log("works...");
          $("#events-content").append(
            `<p>There are no events in the category of ${filterTypeUpper}</p>`
          );
          $('#search-filter').attr('disabled', false)
        } else {
          events.map((event) => {
            const eventHtml = `
            <div class="col-12 col-md-6 col-lg-3 mb-5">
                <div class="card mb-4 bg-white h-100">
                    <img class="event-picture" src="${event.image}" class="d-inline-block d-none d-md-inline-block card-img-top" alt="picture of an event">
                    <div class="card-body d-flex flex-column card-body-container">
                        <h5 class="card-title">${event.name}</h5>
                        <p>Date: ${moment(event.date).format('YYYY-MM-DD kk:mm')}</p>
                        <a href="/show/${event.id}" class="btn btn-dark card-button">Show Event</a>
                    </div>
                </div>
            </div>
            `;
            $("#events-content").append(eventHtml);
            $('#search-filter').attr('disabled', false)
          });
        }
      },
    });
  });

  // Removing the success message by add, edit, delete after 4 seconds
  setTimeout(() => {
      $('#alert-message').slideUp('slow', () => { 
          $('#alert-message').remove();});
  }, 4000);
});
