.class Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;
.super Ljava/lang/Object;
.source "DmConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/DmConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DmContentValues"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DmContentValues"

.field protected static final NUM_OF_MAP:I = 0x3

.field protected static final TYPE_CONFIG_DB:I = 0x0

.field protected static final TYPE_NV:I = 0x1

.field protected static final TYPE_OTA:I = 0x2

.field private static mMaxTransactionId:I


# instance fields
.field private mTransactionMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected addConfigData(IILandroid/content/ContentValues;)V
    .locals 4
    .param p1, "transactionId"    # I
    .param p2, "type"    # I
    .param p3, "configData"    # Landroid/content/ContentValues;

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "storedConfigData":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/ContentValues;

    goto :goto_0

    .line 516
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no transaction with transactionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " create new transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DmContentValues"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/ContentValues;

    .line 520
    sget v1, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    if-le p1, v1, :cond_1

    .line 521
    sput p1, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    .line 524
    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 525
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void
.end method

.method protected allTransactionDone()Z
    .locals 2

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const/4 v1, 0x0

    return v1

    .line 546
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected getConfigData(II)Landroid/content/ContentValues;
    .locals 3
    .param p1, "transactionId"    # I
    .param p2, "type"    # I

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    return-object v1

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    return-object v0

    .line 530
    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getNewTransactionId()I
    .locals 1

    .line 508
    sget v0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    return v0
.end method

.method protected removeConfigData(II)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "type"    # I

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method
