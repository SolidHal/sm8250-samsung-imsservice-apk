.class public Lcom/sec/internal/ims/settings/DebugConfigStorage;
.super Ljava/lang/Object;
.source "DebugConfigStorage.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public insert(ILandroid/content/ContentValues;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    const-string v1, "Debug_config"

    invoke-static {p1, v0, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 27
    return-void
.end method

.method public query(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "projection"    # [Ljava/lang/String;

    .line 30
    if-nez p2, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    const-string v1, "Debug_config"

    invoke-static {p1, v0, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 35
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

    .line 36
    .local v1, "ret":Landroid/database/MatrixCursor;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 37
    return-object v1
.end method
