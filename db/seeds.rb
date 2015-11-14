# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


test_user = User.create!(email: "who@nowhere.com", password: "password", password_confirmation: "password")
test_user.save

test_board = test_user.boards.create(title: "Robots")

preset_pins = [
  {
    title: 'Paranoid Android',
    image_url: 'http://nationalautismnetwork.com/uploads/38f7e790800de114c41325c4aacd0937.jpg'
  },
  {
    title: 'Robots in Love',
    image_url: 'http://img0.etsystatic.com/il_fullxfull.55815690.jpg'
  },
  {
    title: '80s Robot',
    image_url: 'http://legacy.nerdywithchildren.com/wp-content/uploads/2013/06/retro-robot-toy.jpg'
  },
  {
    title: 'Danger, Will Robinson',
    image_url: 'http://www.mouser.com/images/microsites/funny-thing-becoming-human-robotics-fig3.jpg'
  },
  {
    title: 'Trash Collector',
    image_url: 'http://i00.i.aliimg.com/wsphoto/v0/570827790/Wall-E-Walle-12CM-Pixar-Robots-from-Robot-Story-Remote-Control-Wall-E-Walle-Free-Shipping.jpg'
  },
  {
    title: 'Themes in Robotics',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/2a/99/0c/2a990cc1e241e0493607034431bc6964.jpg'
  },
  {
    title: 'Where are the robots?',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/75/95/f4/7595f45f89668c8034eb38f541071403.jpg'
  },
  {
    title: 'Slavic word meaning worker',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/75/95/f4/7595f45f89668c8034eb38f541071403.jpg'
  },
  {
    title: 'Enough Robots?',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/d2/2b/34/d22b341647e07d59d75718b6afbdd932.jpg'
  },
  {
    title: 'Not my favorite robot',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/2a/99/0c/2a990cc1e241e0493607034431bc6964.jpg'
  },
  {
    title: 'Favorite Robot',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/d9/26/a5/d926a52df170f56fd43abc3dcb2f496b.jpg'
  },
  {
    title: 'Robot to Pin',
    image_url: 'https://s-media-cache-ak0.pinimg.com/474x/88/1c/b9/881cb9d2d0d1e079d1f661df655a5093.jpg'
  },
  {
    title: 'Man or Machine?',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/38/6a/32/386a3274c9e7e1c805f62170351df234.jpg'
  },
  {
    title: 'Still Not Tired of Robots',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/b7/0e/38/b70e3805fbb180168cece3a20d55ba92.jpg'
  },
  {
    title: 'ROBOTS',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/73/d2/2b/73d22ba95ac48fec2f4a50772efdb4ec.jpg'
  },
  {
    title: 'roboto',
    image_url: 'https://s-media-cache-ak0.pinimg.com/736x/b2/68/7c/b2687c37a136a577c4f7ffa2e6f48f9e.jpg'
  },
]

preset_pins.each do |pin|
  new_pin = test_board.pins.create!(title: pin[:title], image_url: pin[:image_url])
  new_pin.save
end

# test_user.pins.create!(title: 'test', image_url: 'broken_image.jpg')
