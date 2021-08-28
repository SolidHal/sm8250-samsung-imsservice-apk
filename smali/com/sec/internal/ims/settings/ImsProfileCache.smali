.class public Lcom/sec/internal/ims/settings/ImsProfileCache;
.super Ljava/lang/Object;
.source "ImsProfileCache.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

.field private final mContext:Landroid/content/Context;

.field private mIsMvno:Z

.field private mMnoName:Ljava/lang/String;

.field private mNextId:I

.field private mPMnoName:Ljava/lang/String;

.field private mPhoneId:I

.field private final mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mnoName"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lcom/sec/internal/ims/settings/ImsProfileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 50
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    .line 64
    sget-char v2, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 65
    .local v2, "delimeterIndex":I
    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    .line 66
    iput-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    iput-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    .line 73
    iput p3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    .line 74
    return-void
.end method

.method private clearAllFromStorage()V
    .locals 3

    .line 417
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v2, "imsprofile"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->clear(ILandroid/content/Context;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private getAllProfileFromStorage()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 425
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 428
    .local v0, "profileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 429
    .local v2, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    goto :goto_0

    .line 432
    :cond_1
    return-object v0

    .line 425
    .end local v0    # "profileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init(Z)Ljava/util/List;
    .locals 16
    .param p1, "initAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 221
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 223
    .local v2, "mergedProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    iget-object v0, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "init : imsprofile.json"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    move-object v3, v0

    .line 225
    .local v3, "parser":Lcom/google/gson/JsonParser;
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 226
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    .line 228
    .local v4, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 230
    .local v5, "element":Lcom/google/gson/JsonElement;
    :try_start_0
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 232
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v7, "init: Close failed. Keep going"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v6, "profile"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 236
    .local v0, "array":Lcom/google/gson/JsonArray;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_6

    .line 242
    :cond_0
    iget-object v6, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->applyImsProfileUpdate(Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 243
    .local v6, "updatedArray":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 244
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 247
    :cond_1
    move-object v7, v0

    .end local v0    # "array":Lcom/google/gson/JsonArray;
    .local v7, "array":Lcom/google/gson/JsonArray;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 248
    .local v8, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/JsonObject;>;"
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 249
    .local v0, "defaultObj":Lcom/google/gson/JsonElement;
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    .end local v0    # "defaultObj":Lcom/google/gson/JsonElement;
    .local v10, "defaultObj":Lcom/google/gson/JsonElement;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 250
    .local v0, "elem":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 251
    .local v11, "obj":Lcom/google/gson/JsonObject;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    const-string v13, "name"

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 252
    .local v12, "name":Ljava/lang/String;
    const-string v13, "default"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 253
    move-object v10, v11

    goto :goto_3

    .line 256
    :cond_2
    if-nez p1, :cond_3

    const-string v13, "mnoname"

    invoke-virtual {v11, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 257
    :cond_3
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v0    # "elem":Lcom/google/gson/JsonElement;
    .end local v11    # "obj":Lcom/google/gson/JsonObject;
    .end local v12    # "name":Ljava/lang/String;
    :cond_4
    :goto_3
    goto :goto_2

    .line 262
    :cond_5
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    iget-object v0, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v9, "init: No default profile."

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v2

    .line 267
    :cond_6
    iget-object v0, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init: Found "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " profiles to merge."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    monitor-enter p0

    .line 270
    const/4 v0, 0x1

    :try_start_1
    iput v0, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 271
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonObject;

    .line 272
    .local v11, "elem":Lcom/google/gson/JsonObject;
    invoke-static {v10, v11}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 273
    .local v12, "merged":Lcom/google/gson/JsonElement;
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 274
    iget-object v13, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v14, "init: merge failed! check json is valid."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 276
    :cond_7
    invoke-static {v12}, Lcom/sec/internal/ims/settings/ImsProfileCache;->removeNote(Lcom/google/gson/JsonElement;)V

    .line 277
    new-instance v13, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 278
    .local v13, "profile":Lcom/sec/ims/settings/ImsProfile;
    iget v14, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {v13, v14}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 279
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v11    # "elem":Lcom/google/gson/JsonObject;
    .end local v12    # "merged":Lcom/google/gson/JsonElement;
    .end local v13    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :goto_5
    goto :goto_4

    .line 282
    :cond_8
    iget-object v9, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init: merge completed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    sub-int/2addr v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " profiles initiated."

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit p0

    .line 285
    return-object v2

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 237
    .end local v6    # "updatedArray":Lcom/google/gson/JsonElement;
    .end local v7    # "array":Lcom/google/gson/JsonArray;
    .end local v8    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/JsonObject;>;"
    .end local v10    # "defaultObj":Lcom/google/gson/JsonElement;
    .local v0, "array":Lcom/google/gson/JsonArray;
    :cond_9
    :goto_6
    iget-object v6, v1, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v7, "init: parse failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-object v2
.end method

.method private isVersionUpdated()Z
    .locals 7

    .line 77
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "pdaVer":Ljava/lang/String;
    const-string/jumbo v2, "ril.official_cscver"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "cscVer":Ljava/lang/String;
    iget v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v5, "imsprofile"

    const-string v6, "buildinfo"

    invoke-static {v3, v4, v5, v6, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "prevVer":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "currVer":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    const/4 v4, 0x1

    return v4

    .line 87
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private removeFromStorage(I)V
    .locals 4
    .param p1, "id"    # I

    .line 413
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imsprofile"

    invoke-static {v0, v1, v3, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private static removeNote(Lcom/google/gson/JsonElement;)V
    .locals 3
    .param p0, "elem"    # Lcom/google/gson/JsonElement;

    .line 164
    const-string v0, "note"

    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 165
    .local v1, "jsonObj":Lcom/google/gson/JsonObject;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1    # "jsonObj":Lcom/google/gson/JsonObject;
    :cond_0
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void
.end method

.method private saveBuildInfo()V
    .locals 7

    .line 91
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "pdaVer":Ljava/lang/String;
    const-string/jumbo v2, "ril.official_cscver"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "cscVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "currVer":Ljava/lang/String;
    iget v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v5, "imsprofile"

    const-string v6, "buildinfo"

    invoke-static {v3, v4, v5, v6, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 408
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 408
    const-string v4, "imsprofile"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "Dump of ImsProfileCache:"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/-$$Lambda$ImsProfileCache$RU_K5ncoLzTvzI4olIbu346G3zs;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/settings/-$$Lambda$ImsProfileCache$RU_K5ncoLzTvzI4olIbu346G3zs;-><init>(Lcom/sec/internal/ims/settings/ImsProfileCache;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 440
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 441
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllProfileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 3
    .param p1, "id"    # I

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    monitor-exit v0

    return-object v1

    .line 366
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    return-object v0

    .line 366
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getProfileListByMdmnType(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "mdmnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/settings/ImsProfile;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 338
    .local v3, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMdmnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v2, "not found from loaded profile by mdmn type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 347
    .local v2, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMdmnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    goto :goto_1

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileListByMdmnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v0

    .line 342
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getProfileListByMnoName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "mnoName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfileListByMnoName(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .param p1, "mnoName"    # Ljava/lang/String;
    .param p2, "isGlobalGcEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 300
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileList by loaded mno - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 305
    .local v3, "p":Lcom/sec/ims/settings/ImsProfile;
    if-eqz p2, :cond_0

    const-string v4, "mmtel"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    :cond_0
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v4, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v3    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    goto :goto_0

    .line 309
    :cond_2
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileList by new mno - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", loaded mno - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 313
    .local v2, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    if-eqz p2, :cond_4

    const-string v3, "mmtel"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 315
    :cond_4
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_5
    goto :goto_1

    .line 321
    :cond_6
    :goto_2
    if-eqz p2, :cond_8

    .line 322
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getAllProfileFromStorage()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 323
    .restart local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GoogleGC_ALL"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 324
    new-instance v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v3, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_7
    goto :goto_3

    .line 329
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileListByMnoName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v0
.end method

.method public initFromResource()V
    .locals 9

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->init(Z)Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "mergedProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "initFromResource : Save to storage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v4, "imsprofile"

    invoke-static {v2, v3, v4, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 181
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 183
    .local v3, "profileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 185
    .local v4, "pProfileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/settings/ImsProfile;

    .line 186
    .local v6, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    iget-boolean v7, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v7, :cond_1

    .line 189
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v6    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_2
    :goto_1
    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v6, "initFromResource : Prepare local cache"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v5

    .line 204
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 205
    iget-boolean v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v6, :cond_5

    .line 206
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v7, "init: This mno is MVNO but no profile defined. Use Parent profiles"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 210
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 213
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 215
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveBuildInfo()V

    .line 218
    return-void

    .line 215
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public insert(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 3
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 377
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V

    .line 380
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    return v0

    .line 378
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 374
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public synthetic lambda$dump$0$ImsProfileCache(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public load(Z)V
    .locals 10
    .param p1, "mnoChanged"    # Z

    .line 98
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mContext:Landroid/content/Context;

    const-string v2, "imsprofile"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 101
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->isVersionUpdated()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mAutoUpdate:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {v2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isUpdateNeeded()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 106
    :cond_0
    const-string v2, "buildinfo"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    .local v2, "profileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 111
    .local v3, "pProfileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 113
    .local v5, "s":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 114
    .local v6, "json":Ljava/lang/String;
    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 116
    .local v7, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 117
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v8, "Invalid ImsProfile from sharedpref, reset to default"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    .line 119
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->initFromResource()V

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_1
    iget v8, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mNextId:I

    .line 125
    iget-boolean v8, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v8, :cond_3

    .line 126
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 129
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v5    # "s":Ljava/lang/Object;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 137
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v4

    .line 140
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 142
    iget-boolean v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    if-eqz v5, :cond_7

    .line 143
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 144
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v6, "load: This mno is MVNO but no profile defined. Use Parent profiles"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 147
    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 150
    :cond_7
    iget-object v5, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 152
    :goto_2
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 137
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 102
    .end local v2    # "profileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    .end local v3    # "pProfileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/settings/ImsProfile;>;"
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string v3, "load: map empty or version update or autoupdate needed or SIM MNO changed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->initFromResource()V

    .line 154
    :goto_4
    return-void
.end method

.method public remove(I)V
    .locals 3
    .param p1, "id"    # I

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->removeFromStorage(I)V

    .line 405
    return-void

    .line 403
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetToDefault()V
    .locals 1

    .line 289
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->clearAllFromStorage()V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 291
    return-void
.end method

.method public update(ILandroid/content/ContentValues;)I
    .locals 4
    .param p1, "id"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 384
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 385
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-nez v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update: profile not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, 0x0

    return v1

    .line 390
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/ims/settings/ImsProfile;->update(Landroid/content/ContentValues;)V

    .line 391
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mProfileMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/ImsProfileCache;->saveToStorage(Lcom/sec/ims/settings/ImsProfile;)V

    .line 397
    const/4 v1, 0x1

    return v1

    .line 395
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateMno(Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "mnoInfo"    # Landroid/content/ContentValues;

    .line 445
    if-eqz p1, :cond_2

    .line 446
    const-string v0, "mnoname"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "newMnoName":Ljava/lang/String;
    const-string v1, "mvnoname"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "newMvnoName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    const/4 v2, 0x1

    .line 452
    .local v2, "isMvno":Z
    move-object v3, v0

    .line 453
    .local v3, "pMnoName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 455
    .end local v2    # "isMvno":Z
    .end local v3    # "pMnoName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 456
    .restart local v2    # "isMvno":Z
    const-string v3, ""

    .line 459
    .restart local v3    # "pMnoName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 460
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMno: Mno Changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iput-boolean v2, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mIsMvno:Z

    .line 462
    iput-object v3, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    .line 463
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mMnoName:Ljava/lang/String;

    .line 464
    if-eqz v2, :cond_1

    .line 465
    iget-object v4, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMno: This mno is MVNO, Parent Mno is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/settings/ImsProfileCache;->mPMnoName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/settings/ImsProfileCache;->load(Z)V

    .line 470
    return v4

    .line 473
    .end local v0    # "newMnoName":Ljava/lang/String;
    .end local v1    # "newMvnoName":Ljava/lang/String;
    .end local v2    # "isMvno":Z
    .end local v3    # "pMnoName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
