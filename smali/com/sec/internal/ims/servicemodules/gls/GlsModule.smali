.class public Lcom/sec/internal/ims/servicemodules/gls/GlsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "GlsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;


# static fields
.field private static final AUTO_ACCEPT_FT_GLS:I = 0x0

.field private static final AUTO_SEND_FT_GLS:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mPushEnabled:[Z

.field private final mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

.field private phoneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    .line 97
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    .line 99
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 100
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 103
    new-instance v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/gls/GlsModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    .line 107
    .local v1, "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 105
    .end local v1    # "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 399
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 403
    nop

    .line 404
    if-nez p4, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object v8, v0

    goto :goto_0

    .line 405
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object v8, v0

    .line 403
    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object v0

    .line 406
    .local v0, "glsData":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;->compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "geoSms":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateGeoSms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " by limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-object v1
.end method

.method private generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "label"    # Ljava/lang/String;

    .line 388
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 391
    nop

    .line 392
    if-nez p4, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object v8, v0

    goto :goto_0

    .line 393
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object v8, v0

    .line 391
    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object v0

    .line 394
    .local v0, "glsData":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "xmlData":Ljava/lang/String;
    return-object v1
.end method

.method private isPushServiceAvailable()Z
    .locals 1

    .line 412
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable(I)Z

    move-result v0

    return v0
.end method

.method private isPushServiceAvailable(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 416
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 417
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 419
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsRegistration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mPushEnabled: true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v1

    .line 423
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 424
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 425
    const-string v3, "chatbot-communication"

    invoke-virtual {v0, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    return v1

    .line 430
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "geolocation push is disabled."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x0

    return v1
.end method

.method private makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "loc"    # Landroid/location/Location;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 380
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 382
    .local v0, "date":Ljava/util/Date;
    new-instance v8, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-virtual {v0}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v1

    invoke-direct {v8, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;-><init>(Ljava/util/Date;I)V

    .line 383
    .local v8, "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    new-instance v9, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, v0

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V

    .line 384
    .local v1, "glsData":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    return-object v1
.end method

.method private save2FileSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "xmlData"    # Ljava/lang/String;

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 349
    .local v0, "curmils":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    .line 351
    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/gls"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v4, "outFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 355
    .local v5, "fo":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    nop

    .line 366
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :goto_0
    goto :goto_1

    .line 367
    :catch_0
    move-exception v3

    .line 368
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 372
    :goto_1
    return-object v2

    .line 364
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 360
    :catch_1
    move-exception v6

    .line 361
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    nop

    .line 364
    if-eqz v5, :cond_0

    .line 366
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 369
    goto :goto_2

    .line 367
    :catch_2
    move-exception v7

    .line 368
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v3

    .line 357
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 358
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 359
    nop

    .line 364
    if-eqz v5, :cond_1

    .line 366
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 369
    goto :goto_3

    .line 367
    :catch_4
    move-exception v7

    .line 368
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 359
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v3

    .line 364
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    if-eqz v5, :cond_2

    .line 366
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 369
    goto :goto_5

    .line 367
    :catch_5
    move-exception v6

    .line 368
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 371
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    throw v3

    .line 374
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "fo":Ljava/io/FileOutputStream;
    :cond_3
    return-object v3
.end method

.method private updateFeatures(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 521
    .local v0, "isRcsEnabled":Z
    if-nez v0, :cond_1

    .line 522
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateFeatures: RCS is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    aput-boolean v1, v2, p1

    .line 524
    return-void

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    .line 527
    const-string v4, "geolocPushAuth"

    invoke-static {v4, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 526
    invoke-static {v3, v4, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v2, p1

    .line 528
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures mPushEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    if-ge v1, v2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    .line 532
    .local v2, "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 530
    .end local v2    # "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public acceptLocationShare(J)V
    .locals 2
    .param p1, "sessionId"    # J

    .line 304
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onAcceptLocationShareInCallResponse(JZ)V

    .line 306
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->acceptFileTransfer(I)V

    .line 310
    return-void
.end method

.method public cancelLocationShare(J)V
    .locals 2
    .param p1, "sessionId"    # J

    .line 317
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCancelLocationShareInCallResponse(JZ)V

    .line 319
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(I)V

    .line 323
    return-void
.end method

.method public createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;
    .locals 28
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "requestAppId"    # Ljava/lang/String;
    .param p7, "isPublicAccountMsg"    # Z
    .param p8, "isGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 269
    .local p3, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v0, p0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createInCallLocationShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 271
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    move-object/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCreateInCallLocationShareResponse(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 272
    return-object v2

    .line 275
    :cond_0
    const-string v1, "0"

    .line 276
    .local v1, "cid":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    invoke-direct {v0, v1, v15, v14, v13}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "body":Ljava/lang/String;
    invoke-direct {v0, v12}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->save2FileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 278
    .local v25, "filePath":Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v3, v12}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 279
    .local v26, "extinfo":Ljava/lang/String;
    if-eqz v25, :cond_2

    .line 280
    if-nez p8, :cond_1

    .line 281
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    .line 282
    .local v2, "phoneId":I
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    const-string v9, "application/vnd.gsma.rcspushlocation+xml"

    move v4, v2

    move-object/from16 v5, v25

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v10, p7

    move-object/from16 v27, v12

    .end local v12    # "body":Ljava/lang/String;
    .local v27, "body":Ljava/lang/String;
    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v14, v26

    move-object/from16 v15, v18

    invoke-interface/range {v3 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v3

    return-object v3

    .line 285
    .end local v2    # "phoneId":I
    .end local v27    # "body":Ljava/lang/String;
    .restart local v12    # "body":Ljava/lang/String;
    :cond_1
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v24, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    const-string v18, "application/vnd.gsma.rcspushlocation+xml"

    move-object/from16 v14, p1

    move-object/from16 v15, v25

    move-object/from16 v16, p3

    move-object/from16 v17, p6

    move-object/from16 v23, v26

    invoke-interface/range {v13 .. v24}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2

    .line 290
    :cond_2
    return-object v2
.end method

.method public deleteGeolocSharings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p1, "msg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onDeleteAllLocationShareResponse(Z)V

    .line 332
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 336
    return-void
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 178
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 2
    .param p1, "phoneId"    # I

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 184
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 183
    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 2

    .line 131
    const-string v0, "im"

    const-string v1, "gls"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->handleIntent(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 81
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    .line 82
    .local v0, "outSessionId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->startLocationShareInCall(J)V

    .line 83
    goto :goto_0

    .line 85
    .end local v0    # "outSessionId":J
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    .line 86
    .local v0, "inSessionId":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->acceptLocationShare(J)V

    .line 87
    nop

    .line 93
    .end local v0    # "inSessionId":J
    :goto_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 157
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateFeatures(I)V

    .line 159
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_0
    return-void
.end method

.method public onIncomingTransferUndecided(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onIncomingLoactionShareInCall(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 463
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 464
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v0, :cond_0

    const-string v1, "auto_accept_gls"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 467
    :cond_0
    return-void
.end method

.method public onOutgoingTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    int-to-long v2, v2

    .line 457
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v4

    .line 456
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCreateInCallLocationShareResponse(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 458
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 139
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 113
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceSwitched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateFeatures(I)V

    .line 115
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 450
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransferCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 452
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(JLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZLcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 453
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransferCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 446
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    const/4 v6, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(JLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZLcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 447
    return-void
.end method

.method public registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 175
    return-void
.end method

.method public registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 170
    return-void
.end method

.method public rejectLocationShare(J)V
    .locals 2
    .param p1, "sessionId"    # J

    .line 340
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onRejectLocationShareInCallResponse(JZ)V

    .line 342
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->rejectFileTransfer(I)V

    .line 345
    return-void
.end method

.method public shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 30
    .param p1, "phoneId"    # I
    .param p2, "cid"    # Ljava/lang/String;
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "requestAppId"    # Ljava/lang/String;
    .param p7, "locationLink"    # Ljava/lang/String;
    .param p8, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p9, "isGroupChat"    # Z
    .param p10, "maapTrafficType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    .line 202
    .local p3, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    move-object/from16 v6, p0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v8, p5

    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareLocationInChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, -0x1

    move/from16 v1, p1

    if-ne v1, v0, :cond_0

    .line 204
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    move v11, v1

    .end local p1    # "phoneId":I
    .local v1, "phoneId":I
    goto :goto_0

    .line 203
    .end local v1    # "phoneId":I
    .restart local p1    # "phoneId":I
    :cond_0
    move v11, v1

    .line 207
    .end local p1    # "phoneId":I
    .local v11, "phoneId":I
    :goto_0
    invoke-direct {v6, v11}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 208
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v3, 0x0

    move-object/from16 v15, p6

    invoke-virtual {v1, v12, v15, v0, v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 209
    return-object v2

    .line 212
    :cond_1
    move-object/from16 v15, p6

    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v11}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 213
    .local v25, "imConfig":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v26

    .line 214
    .local v26, "isImCapAlwaysOn":Z
    invoke-static {v11}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v27

    .line 215
    .local v27, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string/jumbo v0, "sip:anonymous@anonymous.invalid"

    if-nez p9, :cond_9

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v14

    .line 218
    .local v14, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v13, p8

    invoke-interface {v14, v13, v1, v11}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v7

    .line 221
    .local v7, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v27, :cond_2

    invoke-interface/range {v27 .. v27}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_2

    .line 222
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v28

    .line 223
    .local v28, "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "body":Ljava/lang/String;
    move-object v9, v0

    .line 224
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-object v3, v7

    .end local v7    # "capx":Lcom/sec/ims/options/Capabilities;
    .local v3, "capx":Lcom/sec/ims/options/Capabilities;
    move-object v7, v1

    const/4 v1, -0x1

    move v13, v1

    const/4 v1, 0x0

    move-object v4, v14

    .end local v14    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .local v4, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    move v14, v1

    move v15, v1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v1, "text/plain"

    move/from16 v29, v11

    .end local v11    # "phoneId":I
    .local v29, "phoneId":I
    move-object v11, v1

    move-object v5, v8

    move-object/from16 v8, p2

    move-object v1, v10

    move-object/from16 v10, p3

    move-object v2, v12

    move-object/from16 v12, p6

    move-object/from16 v22, p10

    invoke-interface/range {v7 .. v24}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v7

    return-object v7

    .line 221
    .end local v0    # "body":Ljava/lang/String;
    .end local v3    # "capx":Lcom/sec/ims/options/Capabilities;
    .end local v4    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .end local v28    # "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    .end local v29    # "phoneId":I
    .restart local v7    # "capx":Lcom/sec/ims/options/Capabilities;
    .restart local v11    # "phoneId":I
    .restart local v14    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_2
    move-object v3, v7

    move-object v5, v8

    move-object v1, v10

    move/from16 v29, v11

    move-object v4, v14

    .line 227
    .end local v7    # "capx":Lcom/sec/ims/options/Capabilities;
    .end local v11    # "phoneId":I
    .end local v14    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .restart local v3    # "capx":Lcom/sec/ims/options/Capabilities;
    .restart local v4    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .restart local v29    # "phoneId":I
    if-eqz v3, :cond_3

    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v3, v7}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    if-eqz v26, :cond_5

    .line 228
    :cond_4
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 229
    .local v0, "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    invoke-direct {v6, v12, v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "body":Ljava/lang/String;
    move-object v9, v2

    .line 231
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v11, "application/vnd.gsma.rcspushlocation+xml"

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object/from16 v22, p10

    invoke-interface/range {v7 .. v24}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v7

    return-object v7

    .line 234
    .end local v0    # "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "body":Ljava/lang/String;
    :cond_5
    if-eqz v27, :cond_6

    invoke-interface/range {v27 .. v27}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v7, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    .line 235
    invoke-virtual {v3, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 236
    invoke-virtual {v3, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "body":Ljava/lang/String;
    move-object v9, v0

    .line 239
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v11, "text/plain"

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object/from16 v22, p10

    invoke-interface/range {v7 .. v24}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v7

    return-object v7

    .line 243
    .end local v0    # "body":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 244
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object v13, v0

    invoke-virtual/range {v7 .. v14}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 246
    .end local v0    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v3    # "capx":Lcom/sec/ims/options/Capabilities;
    .end local v4    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    nop

    .line 263
    return-object v2

    .line 247
    .end local v29    # "phoneId":I
    .restart local v11    # "phoneId":I
    :cond_9
    move-object v5, v8

    move-object v1, v10

    move/from16 v29, v11

    .end local v11    # "phoneId":I
    .restart local v29    # "phoneId":I
    if-eqz v27, :cond_a

    invoke-interface/range {v27 .. v27}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_a

    .line 248
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v28

    .line 249
    .restart local v28    # "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v0, p0

    move-object v12, v1

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v10, v5

    move/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "body":Ljava/lang/String;
    move-object v9, v0

    .line 250
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v11, "text/plain"

    move-object/from16 v8, p2

    move-object v1, v10

    move-object/from16 v10, p3

    move-object v2, v12

    move-object/from16 v12, p6

    invoke-interface/range {v7 .. v24}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    return-object v3

    .line 247
    .end local v0    # "body":Ljava/lang/String;
    .end local v28    # "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    :cond_a
    move-object v2, v1

    move-object v1, v5

    .line 254
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 255
    .local v0, "anonymousContactUri":Lcom/sec/ims/util/ImsUri;
    move-object/from16 v3, p2

    invoke-direct {v6, v3, v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "body":Ljava/lang/String;
    move-object v9, v4

    .line 257
    iget-object v7, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v11, "application/vnd.gsma.rcspushlocation+xml"

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    invoke-interface/range {v7 .. v24}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    return-object v5
.end method

.method public shareLocationInChat(Ljava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 12
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "requestAppId"    # Ljava/lang/String;
    .param p6, "locationLink"    # Ljava/lang/String;
    .param p7, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p8, "isGroupChat"    # Z
    .param p9, "maapTrafficType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    .line 193
    .local p2, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v11

    .line 194
    .local v11, "phoneId":I
    move-object v0, p0

    move v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public startLocationShareInCall(J)V
    .locals 2
    .param p1, "sessionId"    # J

    .line 295
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onStartLocationShareInCallResponse(JZ)V

    .line 297
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendFile(J)V

    .line 300
    return-void
.end method

.method public stop()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 126
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 8
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Already has ext info, no need update!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 476
    :cond_0
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v1, :cond_1

    .line 477
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 478
    :cond_1
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_5

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v3, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 485
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 486
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 493
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 495
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    :goto_1
    goto :goto_2

    .line 496
    :catch_0
    move-exception v4

    goto :goto_1

    .line 493
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 490
    :catch_1
    move-exception v4

    .line 491
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 495
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 488
    :catch_2
    move-exception v4

    .line 489
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 493
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_3

    .line 495
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 500
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 493
    :goto_3
    if-eqz v1, :cond_4

    .line 495
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 497
    goto :goto_4

    .line 496
    :catch_3
    move-exception v5

    .line 499
    :cond_4
    :goto_4
    throw v4

    .line 503
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 504
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error!!! no gls data in message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 507
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML BODY IS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "extinfo":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "geo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 510
    new-instance v2, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 512
    :cond_7
    new-instance v2, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    :goto_6
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "THE EXTINFO IS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateExtInfo(Ljava/lang/String;)V

    .line 516
    return-void
.end method
