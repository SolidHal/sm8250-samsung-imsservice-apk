.class public Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;
.super Ljava/lang/Object;
.source "JanskyProviderAdapter.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.nsds.provider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->LOG_TAG:Ljava/lang/String;

    .line 34
    const-string v0, "content://com.samsung.ims.nsds.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 40
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Create JanskyServiceTranslation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 43
    return-void
.end method


# virtual methods
.method public getActiveLines()Landroid/database/Cursor;
    .locals 7

    .line 83
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildActiveLinesWithServicveUri()Landroid/net/Uri;

    move-result-object v6

    .line 84
    .local v6, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 12

    .line 88
    const-string v0, "1"

    .line 89
    .local v0, "isEnabled":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildActiveLinesWithServicveUri()Landroid/net/Uri;

    move-result-object v8

    .line 91
    .local v8, "uri":Landroid/net/Uri;
    const-string v9, ""

    .line 92
    .local v9, "result":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    const-string/jumbo v10, "status = ?"

    .line 94
    .local v10, "selection":Ljava/lang/String;
    const-string v11, "1"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, v8

    move-object v5, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 99
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    :cond_0
    const-string v3, "is_native"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "isNative":Ljava/lang/String;
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const-string v4, "msisdn"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "msisdn":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msisdn: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object v9, v4

    .line 106
    goto :goto_1

    .line 108
    .end local v3    # "isNative":Ljava/lang/String;
    .end local v4    # "msisdn":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3

    .line 110
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    return-object v9
.end method

.method public getSIT(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "line"    # Ljava/lang/String;

    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, ""

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildActiveLinesWithServicveUri()Landroid/net/Uri;

    move-result-object v7

    .line 56
    .local v7, "uri":Landroid/net/Uri;
    const-string v8, ""

    .line 57
    .local v8, "result":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    const-string/jumbo v9, "status = ?"

    .line 59
    .local v9, "selection":Ljava/lang/String;
    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    move-object v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 64
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    :cond_1
    const-string v2, "msisdn"

    .line 67
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 66
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "msisdn":Ljava/lang/String;
    const-string/jumbo v3, "service_instance_token"

    .line 69
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 68
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "token":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/adapters/JanskyProviderAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "line: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " msisdn "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", token "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    move-object v4, v3

    move-object v8, v4

    .line 76
    .end local v2    # "msisdn":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2

    .line 78
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v8
.end method

.method public onTokenExpired()V
    .locals 0

    .line 46
    return-void
.end method
