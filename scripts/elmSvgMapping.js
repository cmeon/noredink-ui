const regularAttributes = {
  accentHeight: "accent-height",
  accelerate: "accelerate",
  accumulate: "accumulate",
  additive: "additive",
  alphabetic: "alphabetic",
  allowReorder: "allowReorder",
  amplitude: "amplitude",
  arabicForm: "arabic-form",
  ascent: "ascent",
  attributeName: "attributeName",
  attributeType: "attributeType",
  autoReverse: "autoReverse",
  azimuth: "azimuth",
  baseFrequency: "baseFrequency",
  baseProfile: "baseProfile",
  bbox: "bbox",
  begin: "begin",
  bias: "bias",
  by: "by",
  calcMode: "calcMode",
  capHeight: "cap-height",
  class: "class",
  clipPathUnits: "clipPathUnits",
  contentScriptType: "contentScriptType",
  contentStyleType: "contentStyleType",
  cx: "cx",
  cy: "cy",
  d: "d",
  decelerate: "decelerate",
  descent: "descent",
  diffuseConstant: "diffuseConstant",
  divisor: "divisor",
  dur: "dur",
  dx: "dx",
  dy: "dy",
  edgeMode: "edgeMode",
  elevation: "elevation",
  end: "end",
  exponent: "exponent",
  externalResourcesRequired: "externalResourcesRequired",
  filterRes: "filterRes",
  filterUnits: "filterUnits",
  format: "format",
  from: "from",
  fx: "fx",
  fy: "fy",
  g1: "g1",
  g2: "g2",
  glyphName: "glyph-name",
  glyphRef: "glyphRef",
  gradientTransform: "gradientTransform",
  gradientUnits: "gradientUnits",
  hanging: "hanging",
  height: "height",
  horizAdvX: "horiz-adv-x",
  horizOriginX: "horiz-origin-x",
  horizOriginY: "horiz-origin-y",
  id: "id",
  ideographic: "ideographic",
  in_: "in",
  in2: "in2",
  intercept: "intercept",
  k: "k",
  k1: "k1",
  k2: "k2",
  k3: "k3",
  k4: "k4",
  kernelMatrix: "kernelMatrix",
  kernelUnitLength: "kernelUnitLength",
  keyPoints: "keyPoints",
  keySplines: "keySplines",
  keyTimes: "keyTimes",
  lang: "lang",
  lengthAdjust: "lengthAdjust",
  limitingConeAngle: "limitingConeAngle",
  local: "local",
  markerHeight: "markerHeight",
  markerUnits: "markerUnits",
  markerWidth: "markerWidth",
  maskContentUnits: "maskContentUnits",
  maskUnits: "maskUnits",
  mathematical: "mathematical",
  max: "max",
  media: "media",
  method: "method",
  min: "min",
  mode: "mode",
  name: "name",
  numOctaves: "numOctaves",
  offset: "offset",
  operator: "operator",
  order: "order",
  orient: "orient",
  orientation: "orientation",
  origin: "origin",
  overlinePosition: "overline-position",
  overlineThickness: "overline-thickness",
  panose1: "panose-1",
  path: "path",
  pathLength: "pathLength",
  patternContentUnits: "patternContentUnits",
  patternTransform: "patternTransform",
  patternUnits: "patternUnits",
  pointOrder: "point-order",
  points: "points",
  pointsAtX: "pointsAtX",
  pointsAtY: "pointsAtY",
  pointsAtZ: "pointsAtZ",
  preserveAlpha: "preserveAlpha",
  preserveAspectRatio: "preserveAspectRatio",
  primitiveUnits: "primitiveUnits",
  r: "r",
  radius: "radius",
  refX: "refX",
  refY: "refY",
  renderingIntent: "rendering-intent",
  repeatCount: "repeatCount",
  repeatDur: "repeatDur",
  requiredExtensions: "requiredExtensions",
  requiredFeatures: "requiredFeatures",
  restart: "restart",
  result: "result",
  rotate: "rotate",
  rx: "rx",
  ry: "ry",
  scale: "scale",
  seed: "seed",
  slope: "slope",
  spacing: "spacing",
  specularConstant: "specularConstant",
  specularExponent: "specularExponent",
  speed: "speed",
  spreadMethod: "spreadMethod",
  startOffset: "startOffset",
  stdDeviation: "stdDeviation",
  stemh: "stemh",
  stemv: "stemv",
  stitchTiles: "stitchTiles",
  strikethroughPosition: "strikethrough-position",
  strikethroughThickness: "strikethrough-thickness",
  string: "string",
  style: "style",
  surfaceScale: "surfaceScale",
  systemLanguage: "systemLanguage",
  tableValues: "tableValues",
  target: "target",
  targetX: "targetX",
  targetY: "targetY",
  textLength: "textLength",
  title: "title",
  to: "to",
  transform: "transform",
  type_: "type",
  u1: "u1",
  u2: "u2",
  underlinePosition: "underline-position",
  underlineThickness: "underline-thickness",
  unicode: "unicode",
  unicodeRange: "unicode-range",
  unitsPerEm: "units-per-em",
  vAlphabetic: "v-alphabetic",
  vHanging: "v-hanging",
  vIdeographic: "v-ideographic",
  vMathematical: "v-mathematical",
  values: "values",
  version: "version",
  vertAdvY: "vert-adv-y",
  vertOriginX: "vert-origin-x",
  vertOriginY: "vert-origin-y",
  viewBox: "viewBox",
  viewTarget: "viewTarget",
  width: "width",
  widths: "widths",
  x: "x",
  xHeight: "x-height",
  x1: "x1",
  x2: "x2",
  xChannelSelector: "xChannelSelector",
  xlinkActuate: "xlink:actuate",
  xlinkArcrole: "xlink:arcrole",
  xlinkHref: "xlink:href",
  xlinkRole: "xlink:role",
  xlinkShow: "xlink:show",
  xlinkTitle: "xlink:title",
  xlinkType: "xlink:type",
  xmlBase: "xml:base",
  xmlLang: "xml:lang",
  xmlSpace: "xml:space",
  y: "y",
  y1: "y1",
  y2: "y2",
  yChannelSelector: "yChannelSelector",
  z: "z",
  zoomAndPan: "zoomAndPan"
};

const presentationAttributes = {
  alignmentBaseline: "alignment-baseline",
  baselineShift: "baseline-shift",
  clipPath: "clip-path",
  clipRule: "clip-rule",
  clip: "clip",
  colorInterpolationFilters: "color-interpolation-filters",
  colorInterpolation: "color-interpolation",
  colorProfile: "color-profile",
  colorRendering: "color-rendering",
  color: "color",
  cursor: "cursor",
  direction: "direction",
  display: "display",
  dominantBaseline: "dominant-baseline",
  enableBackground: "enable-background",
  fillOpacity: "fill-opacity",
  fillRule: "fill-rule",
  fill: "fill",
  filter: "filter",
  floodColor: "flood-color",
  floodOpacity: "flood-opacity",
  fontFamily: "font-family",
  fontSizeAdjust: "font-size-adjust",
  fontSize: "font-size",
  fontStretch: "font-stretch",
  fontStyle: "font-style",
  fontVariant: "font-variant",
  fontWeight: "font-weight",
  glyphOrientationHorizontal: "glyph-orientation-horizontal",
  glyphOrientationVertical: "glyph-orientation-vertical",
  imageRendering: "image-rendering",
  kerning: "kerning",
  letterSpacing: "letter-spacing",
  lightingColor: "lighting-color",
  markerEnd: "marker-end",
  markerMid: "marker-mid",
  markerStart: "marker-start",
  mask: "mask",
  opacity: "opacity",
  overflow: "overflow",
  pointerEvents: "pointer-events",
  shapeRendering: "shape-rendering",
  stopColor: "stop-color",
  stopOpacity: "stop-opacity",
  strokeDasharray: "stroke-dasharray",
  strokeDashoffset: "stroke-dashoffset",
  strokeLinecap: "stroke-linecap",
  strokeLinejoin: "stroke-linejoin",
  strokeMiterlimit: "stroke-miterlimit",
  strokeOpacity: "stroke-opacity",
  strokeWidth: "stroke-width",
  stroke: "stroke",
  textAnchor: "text-anchor",
  textDecoration: "text-decoration",
  textRendering: "text-rendering",
  unicodeBidi: "unicode-bidi",
  visibility: "visibility",
  wordSpacing: "word-spacing",
  writingMode: "writing-mode"
};

const allAttributes = Object.assign({}, regularAttributes, presentationAttributes);

module.exports = {
  svgToElm: Object.assign({}, ...Object.entries(allAttributes).map(([a,b]) => ({ [b]: a }))),
  elmToSvg: allAttributes
};