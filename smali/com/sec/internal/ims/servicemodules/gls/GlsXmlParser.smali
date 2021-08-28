.class public Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;
.super Ljava/lang/Object;
.source "GlsXmlParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDatePath:Ljavax/xml/xpath/XPathExpression;

.field private mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mEntityPath:Ljavax/xml/xpath/XPathExpression;

.field private mIdPath:Ljavax/xml/xpath/XPathExpression;

.field private mLabelPath:Ljavax/xml/xpath/XPathExpression;

.field private mLocationPath:Ljavax/xml/xpath/XPathExpression;

.field private mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

.field private mRadiusPath:Ljavax/xml/xpath/XPathExpression;

.field private mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

.field private mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 50
    .local v0, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 56
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    .line 57
    .local v1, "xPathFactory":Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mXpath:Ljavax/xml/xpath/XPath;

    .line 59
    const-string/jumbo v2, "rcsenvelope/@entity"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mEntityPath:Ljavax/xml/xpath/XPathExpression;

    .line 60
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/@id"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mIdPath:Ljavax/xml/xpath/XPathExpression;

    .line 61
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/@label"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLabelPath:Ljavax/xml/xpath/XPathExpression;

    .line 62
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/geopriv/location-info/Circle/pos"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLocationPath:Ljavax/xml/xpath/XPathExpression;

    .line 64
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/geopriv/location-info/Circle/radius"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mRadiusPath:Ljavax/xml/xpath/XPathExpression;

    .line 66
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/geopriv/location-info/Point/pos"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

    .line 68
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/timestamp"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDatePath:Ljavax/xml/xpath/XPathExpression;

    .line 69
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/time-offset/@until"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

    .line 70
    const-string/jumbo v2, "rcsenvelope/rcspushlocation/time-offset"

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

    .line 71
    return-void
.end method

.method private createXpathLazy(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 2
    .param p1, "xpath"    # Ljava/lang/String;

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mXpath:Ljavax/xml/xpath/XPath;

    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2
    .param p0, "expressionLazy"    # Ljavax/xml/xpath/XPathExpression;
    .param p1, "context"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 235
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 237
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "toCheck"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is empty!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getGeolocString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object v0

    .line 166
    .local v0, "data":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v1

    .line 167
    .local v1, "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 168
    .local v2, "location":Landroid/location/Location;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 171
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "body"    # Ljava/lang/String;

    .line 191
    const-string v0, ","

    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object v1

    .line 194
    .local v1, "data":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v2

    .line 195
    .local v2, "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 196
    .local v3, "location":Landroid/location/Location;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-result-object v4

    .line 197
    .local v4, "type":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    if-ne v4, v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "label":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .local v6, "validitytime":J
    goto :goto_2

    .line 200
    .end local v6    # "validitytime":J
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 204
    .restart local v6    # "validitytime":J
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 217
    .end local v1    # "data":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .end local v2    # "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "type":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "validitytime":J
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x0

    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .locals 30
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v0

    .line 77
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDocumentBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v4, v0

    .line 80
    .local v4, "document":Lorg/w3c/dom/Document;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mEntityPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 81
    .local v5, "entityStr":Ljava/lang/String;
    const-string v0, "entity"

    invoke-static {v5, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    .line 86
    .local v8, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mIdPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 87
    .local v14, "id":Ljava/lang/String;
    const-string v0, "id"

    invoke-static {v14, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLabelPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 93
    .local v15, "label":Ljava/lang/String;
    if-eqz v15, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object v10, v0

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object v10, v0

    :goto_0
    nop

    .line 96
    .local v10, "locationType":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    const-wide/16 v6, 0x0

    .line 97
    .local v6, "radius":D
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mPointLocationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 98
    .local v13, "fullPointLocation":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mLocationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v0

    .line 99
    .local v12, "fullLocation":Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, "fullLocationParts":[Ljava/lang/String;
    const-string v9, " "

    if-eqz v13, :cond_1

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 101
    invoke-virtual {v13, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 102
    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 103
    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 104
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mRadiusPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v9, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "radiusStr":Ljava/lang/String;
    const-string/jumbo v11, "radiusStr"

    invoke-static {v9, v11}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v6, v16

    .line 107
    .end local v9    # "radiusStr":Ljava/lang/String;
    move-object v9, v0

    goto :goto_1

    .line 108
    :cond_2
    sget-object v9, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Other type location, error!"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    .line 111
    .end local v0    # "fullLocationParts":[Ljava/lang/String;
    .local v9, "fullLocationParts":[Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    array-length v0, v9

    const/4 v11, 0x2

    if-ne v0, v11, :cond_4

    .line 115
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 116
    .local v18, "lat":D
    const/4 v0, 0x1

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v20, v16

    .line 118
    .local v20, "lon":D
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v11, "passive"

    invoke-direct {v0, v11}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 120
    .local v11, "location":Landroid/location/Location;
    move-object/from16 v16, v2

    move-wide/from16 v2, v18

    .end local v18    # "lat":D
    .local v2, "lat":D
    .local v16, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v11, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 121
    move-wide/from16 v17, v2

    move-wide/from16 v2, v20

    .end local v20    # "lon":D
    .local v2, "lon":D
    .local v17, "lat":D
    invoke-virtual {v11, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 122
    double-to-float v0, v6

    invoke-virtual {v11, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 125
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mDatePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 126
    .local v19, "dateString":Ljava/lang/String;
    const-string v0, "dateString"

    move-wide/from16 v20, v2

    move-object/from16 v2, v19

    .end local v19    # "dateString":Ljava/lang/String;
    .local v2, "dateString":Ljava/lang/String;
    .restart local v20    # "lon":D
    invoke-static {v2, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->verifyNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v2}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object v3, v11

    .end local v11    # "location":Landroid/location/Location;
    .local v3, "location":Landroid/location/Location;
    move-object v11, v0

    .line 131
    .local v11, "date":Ljava/util/Date;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityDatePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 132
    .local v19, "validityDateString":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->mValidityTimezonePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v0, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v0

    .line 133
    .local v22, "validityTimezoneString":Ljava/lang/String;
    const/16 v23, 0x0

    .line 134
    .local v23, "valDate":Ljava/util/Date;
    const/16 v24, 0x0

    .line 135
    .local v24, "timezone":I
    if-nez v19, :cond_3

    .line 136
    const/4 v0, 0x0

    move-object/from16 v1, v23

    move-object/from16 v23, v2

    .local v0, "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    goto :goto_3

    .line 139
    .end local v0    # "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    :cond_3
    :try_start_2
    invoke-static/range {v19 .. v19}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    move-object/from16 v23, v0

    .line 140
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v24, v0

    .line 143
    move-object/from16 v0, v23

    move/from16 v1, v24

    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move-object/from16 v0, v23

    move/from16 v1, v24

    .line 144
    .end local v23    # "valDate":Ljava/util/Date;
    .end local v24    # "timezone":I
    .local v0, "valDate":Ljava/util/Date;
    .local v1, "timezone":I
    :goto_2
    move-object/from16 v23, v2

    .end local v2    # "dateString":Ljava/lang/String;
    .local v23, "dateString":Ljava/lang/String;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;-><init>(Ljava/util/Date;I)V

    move/from16 v24, v1

    move-object v1, v0

    move-object v0, v2

    .line 147
    .local v0, "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    .local v1, "valDate":Ljava/util/Date;
    .restart local v24    # "timezone":I
    :goto_3
    new-instance v2, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-wide/from16 v25, v6

    .end local v6    # "radius":D
    .local v25, "radius":D
    move-object v6, v2

    move-object v7, v14

    move-object/from16 v27, v9

    .end local v9    # "fullLocationParts":[Ljava/lang/String;
    .local v27, "fullLocationParts":[Ljava/lang/String;
    move-object v9, v3

    move-object/from16 v28, v1

    move-object v1, v12

    .end local v12    # "fullLocation":Ljava/lang/String;
    .local v1, "fullLocation":Ljava/lang/String;
    .local v28, "valDate":Ljava/util/Date;
    move-object v12, v15

    move-object/from16 v29, v13

    .end local v13    # "fullPointLocation":Ljava/lang/String;
    .local v29, "fullPointLocation":Ljava/lang/String;
    move-object v13, v0

    invoke-direct/range {v6 .. v13}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V

    return-object v2

    .line 111
    .end local v0    # "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    .end local v1    # "fullLocation":Ljava/lang/String;
    .end local v3    # "location":Landroid/location/Location;
    .end local v11    # "date":Ljava/util/Date;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "lat":D
    .end local v19    # "validityDateString":Ljava/lang/String;
    .end local v20    # "lon":D
    .end local v22    # "validityTimezoneString":Ljava/lang/String;
    .end local v23    # "dateString":Ljava/lang/String;
    .end local v24    # "timezone":I
    .end local v25    # "radius":D
    .end local v27    # "fullLocationParts":[Ljava/lang/String;
    .end local v28    # "valDate":Ljava/util/Date;
    .end local v29    # "fullPointLocation":Ljava/lang/String;
    .local v2, "inputStream":Ljava/io/InputStream;
    .restart local v6    # "radius":D
    .restart local v9    # "fullLocationParts":[Ljava/lang/String;
    .restart local v12    # "fullLocation":Ljava/lang/String;
    .restart local v13    # "fullPointLocation":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v2

    move-wide/from16 v25, v6

    move-object/from16 v27, v9

    move-object v1, v12

    move-object/from16 v29, v13

    .line 112
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "radius":D
    .end local v9    # "fullLocationParts":[Ljava/lang/String;
    .end local v12    # "fullLocation":Ljava/lang/String;
    .end local v13    # "fullPointLocation":Ljava/lang/String;
    .restart local v1    # "fullLocation":Ljava/lang/String;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v25    # "radius":D
    .restart local v27    # "fullLocationParts":[Ljava/lang/String;
    .restart local v29    # "fullPointLocation":Ljava/lang/String;
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse location string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;
    .end local p1    # "xml":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    .end local v1    # "fullLocation":Ljava/lang/String;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v5    # "entityStr":Ljava/lang/String;
    .end local v8    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v10    # "locationType":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "label":Ljava/lang/String;
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local v25    # "radius":D
    .end local v27    # "fullLocationParts":[Ljava/lang/String;
    .end local v29    # "fullPointLocation":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;
    .restart local p1    # "xml":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/text/ParseException;
    throw v0

    .line 154
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_3
    move-exception v0

    .line 155
    .local v0, "e":Ljava/net/URISyntaxException;
    throw v0

    .line 152
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_4
    move-exception v0

    .line 153
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    throw v0

    .line 150
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :catch_5
    move-exception v0

    .line 151
    .local v0, "e":Lorg/xml/sax/SAXException;
    throw v0

    .line 148
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_6
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method
