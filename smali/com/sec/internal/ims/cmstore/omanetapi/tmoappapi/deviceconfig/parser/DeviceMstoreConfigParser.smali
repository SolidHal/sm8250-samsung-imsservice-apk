.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;
.super Ljava/lang/Object;
.source "DeviceMstoreConfigParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->LOG_TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;
    .locals 2
    .param p0, "namespaces"    # Z

    .line 39
    new-instance v0, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public static parseDeviceConfig(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    .locals 3
    .param p0, "deviceConfigXml"    # Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_0

    .line 47
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    .line 51
    .local v0, "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;

    invoke-virtual {v0, p0, v1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v1, "deviceConfiguration":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    return-object v1

    .line 54
    .end local v0    # "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    .end local v1    # "deviceConfiguration":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/parser/DeviceMstoreConfigParser;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseDeviceConfig: malformed device config xml"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
