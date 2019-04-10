import "bootstrap";
import { accordion } from '../components/accordion';
import { anchorScroll } from '../components/anchor-scroll';
import { fadeIn } from '../components/fade-in';

accordion();
anchorScroll();
fadeIn();

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext)
