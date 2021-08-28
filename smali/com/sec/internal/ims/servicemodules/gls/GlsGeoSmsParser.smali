.class public Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;
.super Ljava/lang/Object;
.source "GlsGeoSmsParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "body"    # Ljava/lang/String;

    .line 25
    const-string v0, ","

    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object v2

    .line 28
    .local v2, "data":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    if-nez v2, :cond_0

    .line 29
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getGlsExtInfo, data is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-object v1

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    move-result-object v3

    .line 33
    .local v3, "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 34
    .local v4, "location":Landroid/location/Location;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-result-object v5

    .line 35
    .local v5, "type":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    if-ne v5, v6, :cond_1

    const-string v6, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "label":Ljava/lang/String;
    :goto_0
    const-wide/16 v7, 0x0

    .line 37
    .local v7, "validitytime":J
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->getValidityDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    move-wide v7, v9

    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 39
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    move-wide v7, v9

    .line 45
    :cond_4
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    .end local v2    # "data":Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .end local v3    # "validityDate":Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "type":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .end local v6    # "label":Ljava/lang/String;
    .end local v7    # "validitytime":J
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .locals 28
    .param p1, "geoSms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const-string/jumbo v0, "rcs-l"

    const-string/jumbo v1, "u"

    const-string v2, "crs"

    sget-object v3, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse enter: geoSms = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "geo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 75
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "SchemeSpecificPart":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "fieldStrs":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v9, v7, v8

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "fullLocationParts":[Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v10, "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v11, 0x1

    .local v11, "index":I
    :goto_0
    array-length v12, v7

    const/4 v13, 0x1

    if-ge v11, v12, :cond_1

    .line 84
    aget-object v12, v7, v11

    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "keyValue":[Ljava/lang/String;
    aget-object v14, v12, v8

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 87
    aget-object v14, v12, v8

    aget-object v13, v12, v13

    invoke-virtual {v10, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v12    # "keyValue":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 92
    .end local v11    # "index":I
    :cond_1
    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "radiusStr":Ljava/lang/String;
    if-nez v1, :cond_2

    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 94
    .local v11, "radius":D
    :goto_1
    aget-object v8, v9, v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 95
    .local v14, "lat":D
    aget-object v8, v9, v13

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 97
    .local v18, "lon":D
    new-instance v8, Landroid/location/Location;

    const-string/jumbo v13, "passive"

    invoke-direct {v8, v13}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 99
    .local v8, "location":Landroid/location/Location;
    invoke-virtual {v8, v14, v15}, Landroid/location/Location;->setLatitude(D)V

    .line 100
    move-object/from16 v16, v7

    move-wide/from16 v6, v18

    .end local v7    # "fieldStrs":[Ljava/lang/String;
    .end local v18    # "lon":D
    .local v6, "lon":D
    .local v16, "fieldStrs":[Ljava/lang/String;
    invoke-virtual {v8, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 101
    double-to-float v13, v11

    invoke-virtual {v8, v13}, Landroid/location/Location;->setAccuracy(F)V

    .line 103
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v13, "gcj02"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "parse fail: crs is not gcj02."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_3
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object/from16 v24, v2

    goto :goto_2

    .line 110
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    move-object/from16 v24, v2

    :goto_2
    nop

    .line 112
    .local v24, "locationType":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    .end local v1    # "radiusStr":Ljava/lang/String;
    .local v17, "radiusStr":Ljava/lang/String;
    const-string/jumbo v1, "parse success: location = "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " label = "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v1

    move-object/from16 v23, v8

    move-object/from16 v26, v0

    invoke-direct/range {v20 .. v27}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 119
    .end local v0    # "label":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "SchemeSpecificPart":Ljava/lang/String;
    .end local v6    # "lon":D
    .end local v8    # "location":Landroid/location/Location;
    .end local v9    # "fullLocationParts":[Ljava/lang/String;
    .end local v10    # "fieldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "radius":D
    .end local v14    # "lat":D
    .end local v16    # "fieldStrs":[Ljava/lang/String;
    .end local v17    # "radiusStr":Ljava/lang/String;
    .end local v24    # "locationType":Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    :cond_5
    nop

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    throw v0
.end method
