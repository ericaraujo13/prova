// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Alpine from 'alpinejs'
import mask from '@alpinejs/mask'
import getAddress from "./controllers/getAddress"
import 'flowbite';

window.Alpine = Alpine
Alpine.start()
Alpine.plugin(mask)
window.getAddress = getAddress