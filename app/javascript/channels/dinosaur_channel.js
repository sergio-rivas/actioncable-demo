import consumer from "./consumer"
console.log("running")

// IF USING WEBSOCKETS or RAILS 6+
document.addEventListener('DOMContentLoaded', ()=>{
  // GRAB AN ELEMENT FROM FRONTEND to GET PARAMS FOR THE
  // SOCKET CONNECTION
  let dinosaur = document.querySelector('[dinosaur]')

  // If element found
  if (dinosaur){
    console.log('found dinosaur!')
    var audio = new Audio('/punch.m4a');


    // ACTION CABLE SUBSCIPTION
    consumer.subscriptions.create({channel: "DinosaurChannel", id: dinosaur.dataset.id}, {
      connected() {
        // Called when the subscription is ready for use on the server
      },

      disconnected() {
        // Called when the subscription has been terminated by the server
      },

      received(data) {
        document.querySelector('progress').value = data.health
        audio.play();
        if (data.health < 1) {
          window.location = "/"
        }
      }
    });
  }
})


