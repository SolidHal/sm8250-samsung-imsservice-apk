.class public Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
.super Ljava/lang/Object;
.source "ImsSimMobilityUpdate.java"


# static fields
.field private static final OMC_DATA_FILE:Ljava/lang/String; = "omc_data.json"

.field private static final OMC_PATH_PRISM:Ljava/lang/String; = "/prism/etc/"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMobilityGlobalSettings:Lcom/google/gson/JsonElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mMobilityGlobalSettings:Lcom/google/gson/JsonElement;

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private static checkProfileWithNames(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "element"    # Lcom/google/gson/JsonElement;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mnoname"    # Ljava/lang/String;

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 369
    .local v0, "obj":Lcom/google/gson/JsonObject;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 370
    .local v1, "nameVal":Lcom/google/gson/JsonElement;
    const-string v2, "mnoname"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 371
    .local v2, "mnonameVal":Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 374
    const/4 v3, 0x1

    return v3

    .line 379
    .end local v0    # "obj":Lcom/google/gson/JsonObject;
    .end local v1    # "nameVal":Lcom/google/gson/JsonElement;
    .end local v2    # "mnonameVal":Lcom/google/gson/JsonElement;
    :cond_0
    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 380
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mInstance:Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    return-object v0
.end method

.method private makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;
    .locals 13
    .param p1, "orgProfile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "configJson"    # Lcom/google/gson/JsonObject;

    .line 77
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 78
    .local v0, "orgProfileElement":Lcom/google/gson/JsonElement;
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 82
    .local v1, "parser":Lcom/google/gson/JsonParser;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 86
    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v3, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "profile cannot parse result"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 88
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_0
    const-class v2, Lcom/google/gson/JsonElement;

    invoke-static {v0, v2}, Lcom/sec/internal/helper/JsonUtil;->deepCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 90
    .local v2, "copyOrgProfile":Lcom/google/gson/JsonElement;
    if-nez p2, :cond_0

    .line 91
    sget-object v3, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v4, "object profiles is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object p1

    .line 95
    :cond_0
    const-string/jumbo v3, "profile"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 97
    .local v3, "update":Lcom/google/gson/JsonArray;
    if-nez v3, :cond_1

    .line 98
    sget-object v4, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updates is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object p1

    .line 102
    :cond_1
    sget-object v4, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 104
    .local v4, "updatedProf":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_3

    .line 105
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 106
    .local v6, "p":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 107
    .local v7, "prof":Lcom/google/gson/JsonObject;
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "mnoname"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 108
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "mnoname":Ljava/lang/String;
    invoke-static {v2, v8, v9}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->checkProfileWithNames(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 111
    sget-object v10, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sim mobility imsprofile update : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v2, v6}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 115
    .end local v6    # "p":Lcom/google/gson/JsonElement;
    .end local v7    # "prof":Lcom/google/gson/JsonObject;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "mnoname":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 119
    sget-object v5, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updatedProf is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object p1

    .line 122
    :cond_4
    new-instance v5, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    return-object v5
.end method

.method private mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;
    .locals 5
    .param p1, "diffJson"    # Lcom/google/gson/JsonObject;
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 350
    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 352
    .local v0, "object":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->makeUpdatedProfile(Lcom/sec/ims/settings/ImsProfile;Lcom/google/gson/JsonObject;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .local v1, "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    return-object v1

    .line 356
    .end local v1    # "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating mobility profile failed.return original profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "object":Lcom/google/gson/JsonObject;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object p2
.end method

.method private representativeCountryISO(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 193
    move-object v0, p1

    .line 196
    .local v0, "repISO":Ljava/lang/String;
    const-string v1, "SE"

    const-string v2, "NO"

    const-string v3, "DK"

    const-string v4, "FI"

    const-string v5, "IS"

    const-string v6, "GL"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "NEE":[Ljava/lang/String;
    const-string v2, "LU"

    const-string v3, "BE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "LUX":[Ljava/lang/String;
    const-string v3, "LV"

    const-string v4, "LT"

    const-string v5, "EE"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "SEB":[Ljava/lang/String;
    const-string v4, "RS"

    const-string v5, "HR"

    const-string v6, "AL"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "SEE":[Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 202
    aget-object v0, v1, v6

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    aget-object v0, v2, v6

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {v3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    aget-object v0, v3, v6

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    aget-object v0, v4, v6

    .line 211
    :cond_3
    :goto_0
    sget-object v5, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "representativeCountryISO = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v0
.end method


# virtual methods
.method public applySimMobilityProfileUpdate(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 11
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isSimMobilityAvailable(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v0

    .line 276
    .local v0, "isSimMobility":Z
    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setSimMobility(Z)V

    .line 277
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->activeSimMobility(Z)V

    .line 279
    if-nez v0, :cond_0

    .line 280
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support SimMobility for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object p1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    .line 289
    .local v1, "imsAutoUpdate":Lcom/sec/internal/ims/settings/ImsAutoUpdate;
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getSmkConfig()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 290
    .local v2, "downloadConfigObject":Lcom/google/gson/JsonObject;
    if-eqz v2, :cond_1

    .line 291
    const-string v3, "mobilityprofile_update"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 292
    sget-object v4, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v5, "has download mobilityprofile_update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 299
    .local v3, "mobilityInputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 301
    .local v4, "mobilityProfileElement":Lcom/google/gson/JsonElement;
    const-string v5, "imsprofile_update"

    if-eqz v3, :cond_2

    .line 302
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    .line 303
    .local v6, "mobilityParser":Lcom/google/gson/JsonParser;
    new-instance v7, Lcom/google/gson/stream/JsonReader;

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v7, v8}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 305
    .local v7, "mobilityReader":Lcom/google/gson/stream/JsonReader;
    :try_start_0
    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 306
    invoke-virtual {v8, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v8

    move-object v4, v8

    .line 307
    invoke-virtual {v7}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 308
    :catch_0
    move-exception v8

    .line 309
    .local v8, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v10, "mobilityupdate cannot parse result"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v6    # "mobilityParser":Lcom/google/gson/JsonParser;
    .end local v7    # "mobilityReader":Lcom/google/gson/stream/JsonReader;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 312
    :cond_2
    if-nez v2, :cond_3

    .line 313
    sget-object v5, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v6, "mobilityupdate / downloadmobilityprofile were not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object p1

    .line 319
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 322
    .local v6, "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    const/4 v7, 0x0

    .line 324
    .local v7, "imsUpdate":Lcom/google/gson/JsonObject;
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 325
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v5

    .line 328
    goto :goto_2

    .line 326
    :catch_1
    move-exception v5

    .line 327
    .local v5, "e":Ljava/lang/RuntimeException;
    sget-object v8, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v9, "imsupdate cannot parse result"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isForceSMKUpdate()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 331
    sget-object v5, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v8, "SMK ForceMode - SimMobilityProfile"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0, v7, v6}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 333
    .end local v6    # "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    .local v5, "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-direct {p0, v2, v5}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    goto :goto_3

    .line 337
    .end local v5    # "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v6    # "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    :cond_4
    invoke-direct {p0, v2, v6}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 338
    .end local v6    # "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v5    # "updatedProfile":Lcom/sec/ims/settings/ImsProfile;
    invoke-direct {p0, v7, v5}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mergeProfiles(Lcom/google/gson/JsonObject;Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 341
    :goto_3
    return-object v5
.end method

.method public getMobilityGlobalSettings()Lcom/google/gson/JsonElement;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mMobilityGlobalSettings:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public isSimMobilityAllowedByCarrier(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 8
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "isAvailable":Z
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "OMC_CODE":Ljava/lang/String;
    const-string/jumbo v2, "simmobility_allowlist"

    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "allowList":Ljava/lang/String;
    const-string/jumbo v3, "simmobility_blocklist"

    invoke-virtual {p1, v3}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "blockList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 165
    return v5

    .line 171
    :cond_0
    const/4 v4, -0x1

    const-string/jumbo v6, "persist.ims.simmobility"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 173
    .local v4, "isSimMoEnabledByProperty":I
    if-ne v4, v5, :cond_1

    .line 174
    sget-object v6, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v7, "SimMobility Feature is Enabled"

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v5

    .line 178
    :cond_1
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 184
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v6, "SimMobility enabled by allowlist"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    goto :goto_1

    .line 179
    :cond_4
    :goto_0
    sget-object v5, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v6, "No mobility condition"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_5
    :goto_1
    return v0
.end method

.method public isSimMobilityAllowedByTSS(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 17
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 221
    const-string/jumbo v0, "unified_sales_code_list"

    const/4 v1, 0x1

    .line 223
    .local v1, "isAvailable":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->getCountryFromMnomap(Ljava/lang/String;)Lcom/sec/internal/constants/Mno$Country;

    move-result-object v2

    .line 224
    .local v2, "c":Lcom/sec/internal/constants/Mno$Country;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno$Country;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "countryIso":Ljava/lang/String;
    move-object/from16 v4, p0

    invoke-direct {v4, v3}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->representativeCountryISO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    const-string v5, "/prism/etc//omc_data.json"

    .line 228
    .local v5, "omcDataPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 231
    :try_start_0
    new-instance v7, Lcom/google/gson/stream/JsonReader;

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v7, v8}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .local v7, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    new-instance v8, Lcom/google/gson/JsonParser;

    invoke-direct {v8}, Lcom/google/gson/JsonParser;-><init>()V

    .line 233
    .local v8, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v8, v7}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v9

    .line 235
    .local v9, "omc_data":Lcom/google/gson/JsonElement;
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 237
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 239
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 240
    .local v0, "list":Lcom/google/gson/JsonElement;
    const-string/jumbo v10, "ro.csc.sales_code"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "code":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    .line 246
    .local v11, "je":Lcom/google/gson/JsonElement;
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 247
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v12

    .line 249
    .local v12, "unifiedCode":Lcom/google/gson/JsonArray;
    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/gson/JsonElement;

    .line 250
    .local v14, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 251
    .local v15, "obj":Ljava/lang/String;
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 253
    goto :goto_1

    .line 255
    .end local v14    # "elem":Lcom/google/gson/JsonElement;
    .end local v15    # "obj":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 262
    .end local v0    # "list":Lcom/google/gson/JsonElement;
    .end local v8    # "parser":Lcom/google/gson/JsonParser;
    .end local v9    # "omc_data":Lcom/google/gson/JsonElement;
    .end local v10    # "code":Ljava/lang/String;
    .end local v11    # "je":Lcom/google/gson/JsonElement;
    .end local v12    # "unifiedCode":Lcom/google/gson/JsonArray;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 231
    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    invoke-virtual {v7}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "isAvailable":Z
    .end local v2    # "c":Lcom/sec/internal/constants/Mno$Country;
    .end local v3    # "countryIso":Ljava/lang/String;
    .end local v5    # "omcDataPath":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    .end local p1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :goto_2
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 262
    .end local v7    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v1    # "isAvailable":Z
    .restart local v2    # "c":Lcom/sec/internal/constants/Mno$Country;
    .restart local v3    # "countryIso":Ljava/lang/String;
    .restart local v5    # "omcDataPath":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    .restart local p1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    sget-object v7, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v8, "omc_data.json parsing fail."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_4

    .line 267
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v7, "omc_data.json not found."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_4
    sget-object v0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SimMobility "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " in Unified Sales Code (TSS2.0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return v1
.end method

.method public isSimMobilityAvailable(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 5
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 391
    const-string v0, ""

    .line 392
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUnifiedSalesCodeInTSS()Z

    move-result v1

    .line 393
    .local v1, "isTSS20":Z
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 394
    const-string v0, "SIM Mobility Feature disabled; "

    goto :goto_0

    .line 395
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isSimMobilityAllowedByTSS(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    const-string v0, "Not outbound Sim in TSS2.0 - SimMobility should be disabled; "

    goto :goto_0

    .line 397
    :cond_1
    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->isOutboundSim(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 398
    const-string v0, "Not outbound Sim - SimMobility should be disabled; "

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Au operator return original emergency profile :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    .line 402
    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    const-string/jumbo v2, "ro.product.first_api_level"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x1e

    if-ge v2, v4, :cond_5

    .line 404
    :cond_4
    const-string v0, "Disable SimMobility in non VZW Tablet under R OS and non voice capable tablet in R OS"

    .line 409
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    invoke-static {v2, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    return v3

    .line 406
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->isSimMobilityAllowedByCarrier(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    return v2
.end method

.method public loadMobilityGlobalSettings()Z
    .locals 6

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "mobilityGlobalElement":Lcom/google/gson/JsonElement;
    sget-object v1, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->TAG:Ljava/lang/String;

    const-string v2, "loadMobilityGlobalSettings"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000a

    .line 131
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v1, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_1
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 133
    .local v2, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 134
    .end local v2    # "parser":Lcom/google/gson/JsonParser;
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    .end local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    goto :goto_1

    .line 129
    .restart local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mobilityGlobalElement":Lcom/google/gson/JsonElement;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 134
    .end local v1    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "mobilityGlobalElement":Lcom/google/gson/JsonElement;
    .restart local p0    # "this":Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "globalsettings_update"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->mMobilityGlobalSettings:Lcom/google/gson/JsonElement;

    .line 142
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 144
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
