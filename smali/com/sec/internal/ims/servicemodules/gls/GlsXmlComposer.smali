.class public Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;
.super Ljava/lang/Object;
.source "GlsXmlComposer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPosition(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .param p0, "location"    # Landroid/location/Location;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method private static addRcsPushLocation(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<rcspushlocation id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\">"

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    const-string v1, "\" label=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "\" label=\"\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static addValidityDate(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    .line 78
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v1, "<rpid:time-offset rpid:until=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getTimeZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "</rpid:time-offset>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0

    .line 88
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static addValidityDateUsageRules(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    .line 98
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v1, "<gp:usage-rules>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "<gp:retention-expiry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "</gp:retention-expiry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "</gp:usage-rules>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0

    .line 108
    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 25
    if-eqz p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "<rcsenvelope xmlns=\"urn:gsma:params:xml:ns:rcs:rcs:geolocation\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " xmlns:rpid=\"urn:ietf:params:xml:ns:pidf:rpid\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " xmlns:gp=\"urn:ietf:params:xml:ns:pidf:geopriv10\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, " xmlns:gml=\"http://www.opengis.net/gml\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, " xmlns:gs=\"http://www.opengis.net/pidflo/1.0\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " entity=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getSender()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->addRcsPushLocation(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->addValidityDate(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "<gp:geopriv>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "<gp:location-info>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "<gs:Circle srsName=\"urn:ogc:def:crs:EPSG::4326\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "<gml:pos>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->addPosition(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</gml:pos>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "<gs:radius uom=\"urn:ogc:def:uom:EPSG::9001\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "</gs:radius>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "</gs:Circle>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "</gp:location-info>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->addValidityDateUsageRules(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "</gp:geopriv>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "<timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "</timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "</rcspushlocation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "</rcsenvelope>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 26
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GlsData is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
