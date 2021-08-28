.class public Lcom/sec/internal/ims/settings/GlobalSettingsManager;
.super Ljava/lang/Object;
.source "GlobalSettingsManager.java"


# static fields
.field private static final sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/settings/GlobalSettingsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 29
    sget-object v0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    monitor-exit v0

    return-object v1

    .line 33
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    invoke-direct {v3, p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->sInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    return-object v0

    .line 35
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 46
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 49
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 53
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_2
    return v1

    .line 44
    .end local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 53
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_5
    return p2
.end method

.method public declared-synchronized getGlobalSettings()Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    .end local p0    # "this":Lcom/sec/internal/ims/settings/GlobalSettingsManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .line 87
    move v0, p2

    .line 88
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 90
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 93
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 97
    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    nop

    .line 101
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    return p2

    .line 88
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 101
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 59
    move-object v0, p2

    .line 60
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 61
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 62
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    move-object v0, v2

    goto :goto_2

    .line 60
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2

    .line 66
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultVal"    # [Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->mGlobalSettingsRepo:Lcom/sec/internal/ims/settings/GlobalSettingsRepo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 74
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "values":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    const-string v2, "\\[|\\]|\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_0
    return-object v2

    .line 72
    .end local v1    # "values":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 81
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object p2
.end method
