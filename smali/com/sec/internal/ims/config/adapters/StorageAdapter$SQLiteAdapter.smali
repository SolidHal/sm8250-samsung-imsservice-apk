.class Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StorageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SQLiteAdapter"
.end annotation


# static fields
.field private static final COLUMN1_NAME:Ljava/lang/String; = "PATH"

.field private static final COLUMN2_NAME:Ljava/lang/String; = "VALUE"

.field private static final DB_NAME:Ljava/lang/String; = "config.db"

.field private static final DB_VERSION:I = 0x20

.field private static final PATH_BACKUP:Ljava/lang/String; = "backup"

.field private static final PATH_INFO:Ljava/lang/String; = "info"

.field private static final PATH_METADATA_TIMESTAMP:Ljava/lang/String; = "metadata/timestamp"

.field private static final PATH_OMADM:Ljava/lang/String; = "omadm"

.field private static final PATH_ROOT:Ljava/lang/String; = "root"

.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss ZZZZ"


# instance fields
.field private final COLUMNS:[Ljava/lang/String;

.field private DB_TABLE_MAX:I

.field private mContext:Landroid/content/Context;

.field private mTableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "tableMax"    # I

    .line 295
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    .line 296
    const-string v0, "config.db"

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 276
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->DB_TABLE_MAX:I

    .line 280
    const-string v0, "PATH"

    const-string v2, "VALUE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->COLUMNS:[Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mContext:Landroid/content/Context;

    .line 293
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mContext:Landroid/content/Context;

    .line 298
    iput-object p3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    .line 299
    iput p4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->DB_TABLE_MAX:I

    .line 300
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config.db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", DB_TABLE_MAX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->DB_TABLE_MAX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    return-void
.end method

.method private deleteOldTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 586
    .local p2, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "over table limit. remove old tables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 589
    .local v0, "sortData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOldTables: current tables: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, "table":Ljava/lang/String;
    const-string v3, "metadata/timestamp"

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->readTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "time":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 594
    goto :goto_0

    .line 597
    :cond_0
    const-string v4, "OMADM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v2    # "table":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 602
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->DB_TABLE_MAX:I

    sub-int/2addr v1, v2

    .line 603
    .local v1, "deleteCount":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 604
    return-void

    .line 607
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v2, "removedTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 609
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 610
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 611
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 613
    add-int/lit8 v6, v1, -0x1

    .end local v1    # "deleteCount":I
    .local v6, "deleteCount":I
    if-gtz v1, :cond_4

    .line 614
    move v1, v6

    goto :goto_2

    .line 613
    :cond_4
    move v1, v6

    .line 617
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5    # "tableName":Ljava/lang/String;
    .end local v6    # "deleteCount":I
    .restart local v1    # "deleteCount":I
    :cond_5
    goto :goto_1

    .line 619
    :cond_6
    :goto_2
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOldTables: removed tables: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .line 565
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SQLiteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 570
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 623
    if-nez p1, :cond_0

    .line 624
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "endTransaction: db is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 629
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 633
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "table"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT name FROM sqlite_master WHERE type=?"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 554
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v2

    .line 559
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 560
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v0
.end method

.method private isTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "result":Z
    :try_start_0
    const-string v1, "SELECT COUNT(*) FROM sqlite_master WHERE type=? AND name=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "table"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 540
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 541
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    move v0, v4

    goto :goto_1

    .line 538
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "tableName":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v2

    .line 543
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "tableName":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 546
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "SQLiteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 548
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return v0
.end method

.method private readTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->COLUMNS:[Ljava/lang/String;

    const-string v4, "PATH = ?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 578
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 580
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    goto :goto_1

    .line 574
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "value":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "tableName":Ljava/lang/String;
    .end local p3    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 578
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "tableName":Ljava/lang/String;
    .restart local p3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 582
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 456
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "count":I
    const/4 v1, 0x0

    .line 460
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    .line 461
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    const-string v4, "PATH = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 468
    goto :goto_0

    .line 465
    :catch_0
    move-exception v2

    .line 466
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SQLiteException!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 469
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v0

    .line 462
    :catch_1
    move-exception v3

    .line 463
    .local v3, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteDiskIOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return v2
.end method

.method public deleteAll()Z
    .locals 5

    .line 473
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop table:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    const/4 v0, 0x0

    .line 476
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "SQLiteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 485
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 486
    const/4 v1, 0x1

    return v1

    .line 478
    :catch_1
    move-exception v1

    .line 479
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v2, 0x0

    return v2
.end method

.method public forceDeleteAllConfig()Z
    .locals 7

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "removedTables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 493
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    .line 494
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 495
    .local v4, "table":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE IF EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    nop

    .end local v4    # "table":Ljava/lang/String;
    goto :goto_0

    .line 505
    :cond_0
    nop

    .line 507
    sget-object v2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceDeleteAllConfig: removed tables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, 0x1

    return v2

    .line 501
    :catch_0
    move-exception v3

    .line 502
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SQLiteException!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 504
    return v2

    .line 498
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    .line 499
    .local v3, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteDiskIOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 305
    const-string v0, "VALUE"

    const-string v1, "PATH"

    if-nez p1, :cond_0

    .line 306
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "db is null. return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 310
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TEXT PRIMARY KEY,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TEXT )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "CREATE_TABLE":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v4}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 317
    .local v3, "rightNow":Ljava/util/Calendar;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss ZZZZ"

    .line 318
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 319
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v5, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "metadata/timestamp"

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x5

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    nop

    .end local v2    # "CREATE_TABLE":Ljava/lang/String;
    .end local v3    # "rightNow":Ljava/util/Calendar;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SQLiteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 330
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 334
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->isTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 340
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->DB_TABLE_MAX:I

    if-le v1, v2, :cond_1

    .line 342
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->deleteOldTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 357
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "delete all tables"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getTables(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 353
    .local v2, "table":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 354
    .end local v2    # "table":Ljava/lang/String;
    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->printStackTrace()V

    .line 347
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to open database file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    .end local v0    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    nop

    .line 359
    return-void

    .line 357
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVer"    # I
    .param p3, "newVer"    # I

    .line 363
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade(): ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] -> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "projection"    # [Ljava/lang/String;

    .line 512
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 513
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 514
    const-string v1, "PATH=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 516
    const-string v2, " OR PATH=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 521
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 523
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    .line 524
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    move-object v6, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v3

    .line 528
    goto :goto_1

    .line 525
    :catch_0
    move-exception v3

    .line 526
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SQLiteException!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 530
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    return-object v10
.end method

.method public read(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 369
    .local v0, "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 370
    return-object v0

    .line 372
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 374
    const/4 v1, 0x0

    .line 376
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 378
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 379
    .local v1, "pathPrefix":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v3, "root"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "info"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "backup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "omadm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    const-string/jumbo v3, "root/"

    move-object v1, v3

    goto :goto_1

    .line 380
    :cond_2
    :goto_0
    const-string v3, ""

    move-object v1, v3

    .line 385
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->COLUMNS:[Ljava/lang/String;

    const-string v5, "PATH LIKE ?  ESCAPE \'\\\'"

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    const-string v9, "%"

    .line 386
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_"

    const-string v11, "\\_"

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 385
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 387
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_4

    .line 388
    nop

    .line 396
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    :cond_3
    return-object v0

    .line 391
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 393
    :cond_5
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_5

    .line 396
    :cond_6
    if-eqz v3, :cond_8

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 385
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .end local p1    # "path":Ljava/lang/String;
    :cond_7
    :goto_2
    throw v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 399
    .end local v1    # "pathPrefix":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "readData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 397
    :catch_1
    move-exception v1

    goto :goto_4

    .line 399
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 400
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SQLiteException!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_6

    .line 397
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_3
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 398
    .local v1, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_4
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Can not read DB now!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :cond_8
    :goto_5
    nop

    .line 404
    :goto_6
    return-object v0
.end method

.method public write(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 408
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 409
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "data is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v0

    .line 413
    :cond_0
    const/4 v1, 0x0

    .line 415
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 425
    const/4 v1, 0x1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT OR REPLACE INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " VALUES (?,?);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 427
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 429
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 430
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 431
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 432
    const/4 v5, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 434
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    goto :goto_1

    .line 440
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 436
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SQLiteException!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 441
    nop

    .line 443
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 444
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mTableName:Ljava/lang/String;

    const-string v5, "OMADM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 445
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.samsung.rcs.dmconfigurationprovider/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v7}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    .line 447
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 448
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->this$0:Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-static {v7}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v6

    .line 447
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 450
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    goto :goto_2

    .line 452
    :cond_3
    return v1

    .line 440
    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 441
    throw v1

    .line 419
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v2

    .line 420
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 421
    return v0

    .line 416
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v2

    .line 417
    .local v2, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v3, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteDiskIOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v0
.end method
