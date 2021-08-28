.class public Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
.super Ljava/lang/Object;
.source "EucPersistence.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mEucSQLiteHelper:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

.field private mIsDbOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eucFactory"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mEucSQLiteHelper:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    .line 95
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 96
    return-void
.end method

.method private createDialogData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 754
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 755
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 756
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 757
    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    aget-object v2, v5, v2

    .line 758
    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 757
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v2

    .line 759
    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 760
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 761
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 763
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 764
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 754
    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v0

    return-object v0
.end method

.method private createEucData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 739
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 740
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 741
    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    aget-object v5, v5, v2

    .line 742
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 741
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v5

    .line 743
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 744
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/16 v5, 0x8

    .line 745
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 746
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v3, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const-class v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 747
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aget-object v2, v3, v2

    const/4 v3, 0x3

    .line 748
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 747
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v7

    const/4 v2, 0x6

    .line 749
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x7

    .line 750
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 738
    move v2, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-wide v6, v8

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZLjava/lang/String;ZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    return-object v0
.end method

.method private queryEucDataUsingSelection(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "eucrDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "EUCRDATA"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 590
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->createEucData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "eucrDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .end local p1    # "selection":Ljava/lang/String;
    :cond_0
    :goto_1
    throw v2

    .line 594
    .restart local v0    # "eucrDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .restart local p1    # "selection":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 597
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    nop

    .line 599
    return-object v0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/database/SQLException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v3, "SQL Exception occured!"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 729
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mIsDbOpened:Z

    const-string v1, "EucPersistence is already closed!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mEucSQLiteHelper:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->close()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mIsDbOpened:Z

    .line 735
    return-void
.end method

.method public getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllEucs: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    .local v0, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "whereCondition":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllEucs where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->queryEucDataUsingSelection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 421
    .end local v0    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "whereCondition":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 487
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllEucs: states: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 492
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 498
    .local v1, "itType":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "="

    if-eqz v2, :cond_0

    .line 499
    nop

    .line 500
    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    nop

    .line 505
    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 511
    :cond_0
    nop

    .line 512
    const-string v2, ") AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, "STATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v2, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllEucs where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->queryEucDataUsingSelection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 493
    .end local v0    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "itType":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "types list is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 446
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllEucs: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 451
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 457
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    nop

    .line 458
    const-string v2, "STATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    nop

    .line 463
    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :cond_0
    nop

    .line 469
    const-string v2, ") AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v2, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllEucs where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->queryEucDataUsingSelection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 452
    .end local v0    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "states list is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllEucs(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 531
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllEucs: states: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 536
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    .local v1, "itType":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " OR "

    const-string v4, "="

    if-eqz v2, :cond_0

    .line 545
    nop

    .line 546
    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    nop

    .line 551
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 557
    :cond_0
    const-string v2, ") AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 559
    .local v2, "itState":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 560
    nop

    .line 561
    const-string v5, "STATE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 565
    nop

    .line 566
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 572
    :cond_1
    nop

    .line 573
    const-string v3, ") AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v3, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v3, "=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllEucs where "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->queryEucDataUsingSelection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 537
    .end local v0    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "itType":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .end local v2    # "itState":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "types list (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or states list (size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDialogs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 250
    .local p1, "eucIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "ownIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDialogsForId: ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lang: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ownIdentity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 256
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 264
    .local v3, "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 266
    .local v4, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    .line 268
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v5, "ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v6, "=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, " OR "

    if-eqz v8, :cond_0

    .line 274
    nop

    .line 275
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    :cond_0
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    nop

    .line 284
    const-string v8, " AND ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v10, "LANGUAGE"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v11, "\' OR "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v10, "=\'def\')"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v10, " AND "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v10, "TYPE"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 297
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    .line 298
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v0, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 304
    nop

    .line 305
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "whereCondition":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select from DIALOG table where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :try_start_0
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "DIALOG"

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v5

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 319
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 320
    :goto_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->createDialogData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 316
    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local v4    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "whereCondition":Ljava/lang/String;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .end local p1    # "eucIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "type":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .end local p3    # "lang":Ljava/lang/String;
    .end local p4    # "ownIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    throw v7

    .line 324
    .restart local v3    # "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .restart local v4    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "whereCondition":Ljava/lang/String;
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .restart local p1    # "eucIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "type":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .restart local p3    # "lang":Ljava/lang/String;
    .restart local p4    # "ownIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 327
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    nop

    .line 329
    return-object v3

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/database/SQLException;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v6, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v7, "SQL Exception occured!"

    invoke-direct {v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    .end local v0    # "e":Landroid/database/SQLException;
    .end local v3    # "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local v4    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "whereCondition":Ljava/lang/String;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eucIds list (size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") or ownIdentities list (size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_6
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v3, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 337
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogsByTypes: state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 343
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v1, "DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, " JOIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v2, "EUCRDATA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, " ON "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ID"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "REMOTE_URI"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "TYPE"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v8, " WHERE "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "STATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "LANGUAGE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "def"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    .local v0, "query":Ljava/lang/StringBuilder;
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " OR "

    if-nez v8, :cond_0

    .line 377
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_0
    const-string v2, ") AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 383
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 392
    :cond_1
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "getDialogsByTypesQuery":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDialogsByTypes query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v3, "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_3

    .line 401
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 402
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->createDialogData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 399
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "query":Ljava/lang/StringBuilder;
    .end local v1    # "getDialogsByTypesQuery":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .end local v3    # "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .end local p1    # "state":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .end local p2    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .end local p3    # "lang":Ljava/lang/String;
    .end local p4    # "ownIdentity":Ljava/lang/String;
    :cond_2
    :goto_2
    throw v5

    .line 405
    .restart local v0    # "query":Ljava/lang/StringBuilder;
    .restart local v1    # "getDialogsByTypesQuery":Ljava/lang/String;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .restart local v3    # "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .restart local p1    # "state":Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .restart local p2    # "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .restart local p3    # "lang":Ljava/lang/String;
    .restart local p4    # "ownIdentity":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 408
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_4
    nop

    .line 410
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDialogsByTypes return list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-object v3

    .line 405
    :catch_0
    move-exception v4

    .line 406
    .local v4, "e":Landroid/database/SQLException;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v5, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v6, "SQL Exception occured!"

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    .end local v0    # "query":Ljava/lang/StringBuilder;
    .end local v1    # "getDialogsByTypesQuery":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    .end local v3    # "dialogsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local v4    # "e":Landroid/database/SQLException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "types list is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_6
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 12
    .param p1, "key"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEucByKey: eucMessageKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v3, "\' AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string v3, "TYPE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v4, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v3, "REMOTE_URI"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 630
    .local v1, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, "whereCondition":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEucByKey where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "EUCRDATA"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 636
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->createEucData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    .line 633
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .end local v1    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "whereCondition":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .end local p1    # "key":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    :cond_0
    :goto_0
    throw v3

    .line 638
    .restart local v0    # "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .restart local v1    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "whereCondition":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .restart local p1    # "key":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 641
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    nop

    .line 642
    return-object v0

    .line 638
    :catch_0
    move-exception v2

    .line 639
    .local v2, "e":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v4, "SQL Exception occured!"

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 608
    .end local v0    # "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .end local v1    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "e":Landroid/database/SQLException;
    .end local v11    # "whereCondition":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 649
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolatileEucByMostRecentTimeout for identities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 649
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 654
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    const-string v2, "STATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 661
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 665
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 669
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v5, " AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v5, "TYPE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 674
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 676
    .local v5, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 677
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    nop

    .line 679
    const-string v0, " AND ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v0, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v7, "=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 686
    nop

    .line 687
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 694
    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "whereCondition":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolatileEucByMostRecentTimeout where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/4 v3, 0x0

    .line 701
    .local v3, "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :try_start_0
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "EUCRDATA"

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "TIMEOUT"

    const/16 v18, 0x0

    move-object v13, v2

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 703
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->createEucData(Landroid/database/Cursor;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    goto :goto_2

    .line 701
    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "whereCondition":Ljava/lang/String;
    .end local v3    # "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .end local v5    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .end local p1    # "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    throw v7

    .line 706
    .restart local v2    # "whereCondition":Ljava/lang/String;
    .restart local v3    # "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .restart local v5    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .restart local p1    # "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 709
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_4
    nop

    .line 710
    return-object v3

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQL Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v7, "SQL Exception occured!"

    invoke-direct {v4, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 655
    .end local v0    # "e":Landroid/database/SQLException;
    .end local v2    # "whereCondition":Ljava/lang/String;
    .end local v3    # "eucrData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .end local v5    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "identities list is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_6
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v2, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    .locals 12
    .param p1, "userConsentData"    # Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insertAutoconfUserConsent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p1, :cond_4

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "userConsentId":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->isUserAccept()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v3

    goto :goto_0

    .line 220
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v3

    .line 219
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->EULA:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TYPE"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "TIMESTAMP"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "EUCRDATA"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 227
    .local v8, "id":J
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    const-string v6, "No records were inserted"

    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 232
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->EULA:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v2, "LANGUAGE"

    const-string v3, "def"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getConsentMsgTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getConsentMsgMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DIALOG"

    invoke-virtual {v2, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 241
    .end local v8    # "id":J
    .local v2, "id":J
    cmp-long v4, v2, v10

    if-eqz v4, :cond_1

    .line 244
    return-void

    .line 242
    :cond_1
    new-instance v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    invoke-direct {v4, v6}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    .end local v2    # "id":J
    .restart local v8    # "id":J
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    invoke-direct {v2, v6}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v0    # "userConsentId":Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v8    # "id":J
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string/jumbo v1, "userConsentData is null"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 7
    .param p1, "query"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insert DialogData to database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-eqz p1, :cond_4

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 180
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    .line 181
    .local v1, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    if-eqz v1, :cond_1

    .line 182
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "ID"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v3, "TYPE"

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v3, "LANGUAGE"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v3, "TEXT"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "SUBJECT"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "ACCEPT_BUTTON"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getAcceptButton()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v3, "REJECT_BUTTON"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getRejectButton()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "SUBSCRIBER_IDENTITY"

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "REMOTE_URI"

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->encode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DIALOG"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 195
    .local v3, "id":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v5, "No records were inserted"

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .end local p1    # "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    throw v0

    .line 199
    .end local v1    # "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "id":J
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .restart local p1    # "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    :cond_1
    :goto_1
    goto/16 :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 203
    throw v0

    .line 175
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "DialogData is null"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 5
    .param p1, "eucData"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 142
    if-eqz p1, :cond_2

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert EUCData to database for User Identity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getPin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getExternal()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXTERNAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->encode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REMOTE_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "TIMESTAMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getTimeOut()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "TIMEOUT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "EUCRDATA"

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 163
    .local v1, "id":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 166
    return-void

    .line 164
    :cond_0
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v4, "No records were inserted"

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "id":J
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "eucData is null"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "open()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mIsDbOpened:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "EucPersistence is already opened!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mEucSQLiteHelper:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    nop

    .line 724
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mIsDbOpened:Z

    .line 725
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v2, "Failure, unable to open persistence!"

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEuc with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " or PIN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v3, "SUBSCRIBER_IDENTITY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v2, "REMOTE_URI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    .local v0, "whereConditionBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "whereCondition":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update EUCData where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v2, "updateEucrValues":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATE"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    if-eqz p3, :cond_0

    .line 130
    const-string v3, "USER_PIN"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const-string v5, "EUCRDATA"

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 135
    .local v3, "updatedCount":I
    if-eqz v3, :cond_1

    .line 138
    return-void

    .line 136
    :cond_1
    new-instance v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v5, "No records were updated"

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    .end local v0    # "whereConditionBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "whereCondition":Ljava/lang/String;
    .end local v2    # "updateEucrValues":Landroid/content/ContentValues;
    .end local v3    # "updatedCount":I
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;

    const-string v1, "db instance is null, no access to EUCR database"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
