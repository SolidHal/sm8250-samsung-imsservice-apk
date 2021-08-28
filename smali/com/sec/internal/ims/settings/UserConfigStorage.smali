.class public Lcom/sec/internal/ims/settings/UserConfigStorage;
.super Ljava/lang/Object;
.source "UserConfigStorage.java"


# static fields
.field private static final KEY_LOADED:Ljava/lang/String; = "loaded"

.field private static final LOG_TAG:Ljava/lang/String; = "UserConfigStorage"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMnoname:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialMnoname"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    .line 35
    const-string v0, "UserConfigStorage"

    const-string v1, "UserConfigStorage()"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    .line 39
    return-void
.end method

.method private initUserConfiguration()V
    .locals 14

    .line 98
    const-string/jumbo v0, "user_config"

    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "UserConfigStorage"

    const-string v3, "initUserConfiguration()"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    const-string v3, "DEFAULT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 105
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v3, "values":Landroid/content/ContentValues;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v4, "tmp":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 109
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, "mnoname":Ljava/lang/String;
    :try_start_0
    const-string v7, "configurations"

    invoke-static {v1, v7}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v7

    .local v8, "type":I
    const-string v9, "mnoname"

    const/4 v10, 0x1

    if-eq v7, v10, :cond_7

    .line 114
    const/4 v7, 0x2

    if-eq v8, v7, :cond_1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .local v11, "cnt":I
    :goto_1
    if-ge v7, v11, :cond_4

    .line 119
    const-string v12, "name"

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 120
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    goto :goto_2

    .line 121
    :cond_2
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 122
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    goto :goto_2

    .line 124
    :cond_3
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 128
    .end local v7    # "i":I
    .end local v11    # "cnt":I
    :cond_4
    const-string v7, "default"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 129
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 130
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 132
    goto :goto_4

    .line 134
    :cond_6
    :goto_3
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 137
    :cond_7
    :goto_4
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    .line 138
    iget v7, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v7, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string v11, "loaded"

    invoke-static {v2, v7, v0, v11, v10}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-static {v2, v7, v0, v9, v10}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .end local v8    # "type":I
    goto :goto_5

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method


# virtual methods
.method public insert(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 42
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "UserConfigStorage"

    const-string v2, "insert()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 44
    return-void
.end method

.method public isLoaded()Z
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user_config"

    const-string v4, "loaded"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "projection"    # [Ljava/lang/String;

    .line 47
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "UserConfigStorage"

    const-string/jumbo v2, "query()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->initUserConfiguration()V

    .line 51
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 58
    .local v0, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 59
    .local v1, "ret":Landroid/database/MatrixCursor;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 61
    return-object v1
.end method

.method public reset(Ljava/lang/String;)V
    .locals 8
    .param p1, "mnoname"    # Ljava/lang/String;

    .line 72
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "UserConfigStorage"

    const-string/jumbo v2, "reset()"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 76
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string v2, "UserConfigStorage"

    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v4, "reset() sim not available"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    monitor-exit v0

    return-void

    .line 81
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user_config"

    const-string v5, "mnoname"

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "prevMnoName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const-string v3, "UserConfigStorage"

    iget v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reset() same mnoname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    monitor-exit v0

    return-void

    .line 89
    :cond_1
    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user_config"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->clear(ILandroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user_config"

    const-string v6, "loaded"

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->initUserConfiguration()V

    .line 94
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v2    # "prevMnoName":Ljava/lang/String;
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
