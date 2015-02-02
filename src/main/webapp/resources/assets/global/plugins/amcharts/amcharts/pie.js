AmCharts.AmPieChart = AmCharts.Class({inherits: AmCharts.AmSlicedChart, construct: function (e) {
    this.type = "pie";
    AmCharts.AmPieChart.base.construct.call(this, e);
    this.cname = "AmPieChart";
    this.pieBrightnessStep = 30;
    this.minRadius = 10;
    this.depth3D = 0;
    this.startAngle = 90;
    this.angle = this.innerRadius = 0;
    this.startRadius = "500%";
    this.pullOutRadius = "20%";
    this.labelRadius = 20;
    this.labelText = "[[title]]: [[percents]]%";
    this.balloonText = "[[title]]: [[percents]]% ([[value]])\n[[description]]";
    this.previousScale = 1;
    AmCharts.applyTheme(this,
        e, this.cname)
}, drawChart: function () {
    AmCharts.AmPieChart.base.drawChart.call(this);
    var e = this.chartData;
    if (AmCharts.ifArray(e)) {
        if (0 < this.realWidth && 0 < this.realHeight) {
            AmCharts.VML && (this.startAlpha = 1);
            var f = this.startDuration, c = this.container, b = this.updateWidth();
            this.realWidth = b;
            var h = this.updateHeight();
            this.realHeight = h;
            var d = AmCharts.toCoordinate, k = d(this.marginLeft, b), a = d(this.marginRight, b), t = d(this.marginTop, h) + this.getTitleHeight(), m = d(this.marginBottom, h), w, x, g, v = AmCharts.toNumber(this.labelRadius),
                q = this.measureMaxLabel();
            q > this.maxLabelWidth && (q = this.maxLabelWidth);
            this.labelText && this.labelsEnabled || (v = q = 0);
            w = void 0 === this.pieX ? (b - k - a) / 2 + k : d(this.pieX, this.realWidth);
            x = void 0 === this.pieY ? (h - t - m) / 2 + t : d(this.pieY, h);
            g = d(this.radius, b, h);
            g || (b = 0 <= v ? b - k - a - 2 * q : b - k - a, h = h - t - m, g = Math.min(b, h), h < b && (g /= 1 - this.angle / 90, g > b && (g = b)), h = AmCharts.toCoordinate(this.pullOutRadius, g), g = (0 <= v ? g - 1.8 * (v + h) : g - 1.8 * h) / 2);
            g < this.minRadius && (g = this.minRadius);
            h = d(this.pullOutRadius, g);
            t = AmCharts.toCoordinate(this.startRadius,
                g);
            d = d(this.innerRadius, g);
            d >= g && (d = g - 1);
            m = AmCharts.fitToBounds(this.startAngle, 0, 360);
            0 < this.depth3D && (m = 270 <= m ? 270 : 90);
            m -= 90;
            b = g - g * this.angle / 90;
            for (k = 0; k < e.length; k++)if (a = e[k], !0 !== a.hidden && 0 < a.percents) {
                var n = 360 * a.percents / 100, q = Math.sin((m + n / 2) / 180 * Math.PI), y = -Math.cos((m + n / 2) / 180 * Math.PI) * (b / g), p = this.outlineColor;
                p || (p = a.color);
                var z = this.alpha;
                isNaN(a.alpha) || (z = a.alpha);
                p = {fill: a.color, stroke: p, "stroke-width": this.outlineThickness, "stroke-opacity": this.outlineAlpha, "fill-opacity": z};
                a.url &&
                (p.cursor = "pointer");
                p = AmCharts.wedge(c, w, x, m, n, g, b, d, this.depth3D, p, this.gradientRatio, a.pattern);
                this.addEventListeners(p, a);
                a.startAngle = m;
                e[k].wedge = p;
                0 < f && (this.chartCreated || p.setAttr("opacity", this.startAlpha));
                a.ix = q;
                a.iy = y;
                a.wedge = p;
                a.index = k;
                if (this.labelsEnabled && this.labelText && a.percents >= this.hideLabelsPercent) {
                    var l = m + n / 2;
                    360 < l && (l -= 360);
                    var r = v;
                    isNaN(a.labelRadius) || (r = a.labelRadius);
                    var n = w + q * (g + r), z = x + y * (g + r), A, u = 0;
                    if (0 <= r) {
                        var B;
                        90 >= l && 0 <= l ? (B = 0, A = "start", u = 8) : 90 <= l && 180 > l ? (B = 1,
                            A = "start", u = 8) : 180 <= l && 270 > l ? (B = 2, A = "end", u = -8) : 270 <= l && 360 > l && (B = 3, A = "end", u = -8);
                        a.labelQuarter = B
                    } else A = "middle";
                    var l = this.formatString(this.labelText, a), s = this.labelFunction;
                    s && (l = s(a, l));
                    s = a.labelColor;
                    s || (s = this.color);
                    l = AmCharts.wrappedText(c, l, s, this.fontFamily, this.fontSize, A, !1, this.maxLabelWidth);
                    l.translate(n + 1.5 * u, z);
                    l.node.style.pointerEvents = "none";
                    a.tx = n + 1.5 * u;
                    a.ty = z;
                    0 <= r ? (r = l.getBBox(), s = AmCharts.rect(c, r.width + 5, r.height + 5, "#FFFFFF", .005), s.translate(n + 1.5 * u + r.x, z + r.y), a.hitRect =
                        s, p.push(l), p.push(s)) : this.freeLabelsSet.push(l);
                    a.label = l;
                    a.tx = n;
                    a.tx2 = n + u;
                    a.tx0 = w + q * g;
                    a.ty0 = x + y * g
                }
                n = d + (g - d) / 2;
                a.pulled && (n += this.pullOutRadiusReal);
                a.balloonX = q * n + w;
                a.balloonY = y * n + x;
                a.startX = Math.round(q * t);
                a.startY = Math.round(y * t);
                a.pullX = Math.round(q * h);
                a.pullY = Math.round(y * h);
                this.graphsSet.push(p);
                (0 === a.alpha || 0 < f && !this.chartCreated) && p.hide();
                m += 360 * a.percents / 100
            }
            0 < v && !this.labelRadiusField && this.arrangeLabels();
            this.pieXReal = w;
            this.pieYReal = x;
            this.radiusReal = g;
            this.innerRadiusReal = d;
            0 <
                v && this.drawTicks();
            this.initialStart();
            this.setDepths()
        }
        (e = this.legend) && e.invalidateSize()
    } else this.cleanChart();
    this.dispDUpd();
    this.chartCreated = !0
}, setDepths: function () {
    var e = this.chartData, f;
    for (f = 0; f < e.length; f++) {
        var c = e[f], b = c.wedge, c = c.startAngle;
        0 <= c && 180 > c ? b.toFront() : 180 <= c && b.toBack()
    }
}, arrangeLabels: function () {
    var e = this.chartData, f = e.length, c, b;
    for (b = f - 1; 0 <= b; b--)c = e[b], 0 !== c.labelQuarter || c.hidden || this.checkOverlapping(b, c, 0, !0, 0);
    for (b = 0; b < f; b++)c = e[b], 1 != c.labelQuarter || c.hidden ||
        this.checkOverlapping(b, c, 1, !1, 0);
    for (b = f - 1; 0 <= b; b--)c = e[b], 2 != c.labelQuarter || c.hidden || this.checkOverlapping(b, c, 2, !0, 0);
    for (b = 0; b < f; b++)c = e[b], 3 != c.labelQuarter || c.hidden || this.checkOverlapping(b, c, 3, !1, 0)
}, checkOverlapping: function (e, f, c, b, h) {
    var d, k, a = this.chartData, t = a.length, m = f.label;
    if (m) {
        if (!0 === b)for (k = e + 1; k < t; k++)a[k].labelQuarter == c && (d = this.checkOverlappingReal(f, a[k], c)) && (k = t); else for (k = e - 1; 0 <= k; k--)a[k].labelQuarter == c && (d = this.checkOverlappingReal(f, a[k], c)) && (k = 0);
        !0 === d && 100 >
            h && (d = f.ty + 3 * f.iy, f.ty = d, m.translate(f.tx2, d), f.hitRect && (m = m.getBBox(), f.hitRect.translate(f.tx2 + m.x, d + m.y)), this.checkOverlapping(e, f, c, b, h + 1))
    }
}, checkOverlappingReal: function (e, f, c) {
    var b = !1, h = e.label, d = f.label;
    e.labelQuarter != c || e.hidden || f.hidden || !d || (h = h.getBBox(), c = {}, c.width = h.width, c.height = h.height, c.y = e.ty, c.x = e.tx, e = d.getBBox(), d = {}, d.width = e.width, d.height = e.height, d.y = f.ty, d.x = f.tx, AmCharts.hitTest(c, d) && (b = !0));
    return b
}});
