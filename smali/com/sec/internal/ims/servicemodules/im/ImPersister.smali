.class public Lcom/sec/internal/ims/servicemodules/im/ImPersister;
.super Ljava/lang/Object;
.source "ImPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1c

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imServiceModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ImPersister create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mResolver:Landroid/content/ContentResolver;

    .line 85
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mContext:Landroid/content/Context;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    .line 87
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->clearDeletedParticipants()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->closeDB()V

    .line 89
    return-void
.end method

.method private clearDeletedParticipants()V
    .locals 3

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 1435
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 1436
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "inWhere":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "remove_failed_participant_groupchat"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_0
    const-string/jumbo v1, "participant"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method private delete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 279
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 280
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 283
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :goto_0
    nop

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 292
    goto :goto_2

    .line 291
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while delete. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_1

    .line 285
    :catch_1
    move-exception v1

    .line 286
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteOutOfMemoryException while delete. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->notifyDeviceOutOfMemory()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 293
    :goto_2
    return-void

    .line 291
    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 292
    throw v1

    .line 276
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method private deleteImdnRecRoute(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteImdnRecRoute(Ljava/util/List;)V

    .line 879
    return-void
.end method

.method private deleteImdnRecRoute(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 882
    .local p1, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "idString":Ljava/lang/String;
    const-string v1, "imdn_message_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 886
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 887
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 888
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message_id in ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") OR ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "message_id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0 AND "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imdn_id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 891
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "where":Ljava/lang/String;
    const-string v4, "imdnrecroute"

    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method private deleteMessageNotification(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessageNotification(Ljava/util/List;)V

    .line 856
    return-void
.end method

.method private deleteMessageNotification(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 859
    .local p1, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "idString":Ljava/lang/String;
    const-string v1, "imdn_message_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 864
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 865
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message_id in ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") OR ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "message_id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 0 AND "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "imdn_id"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 868
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "where":Ljava/lang/String;
    const-string v4, "notification"

    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method private deleteParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 2
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "where":Ljava/lang/String;
    const-string/jumbo v1, "participant"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method private deleteSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 3
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 445
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "where":Ljava/lang/String;
    const-string/jumbo v1, "session"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 678
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    goto :goto_1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/database/SQLException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLException while endTransaction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 679
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 680
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SQLiteOutOfMemoryException endTransaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->notifyDeviceOutOfMemory()V

    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 685
    :goto_1
    return-void
.end method

.method private insertImdnRecRoute(Ljava/util/Collection;I)V
    .locals 9
    .param p2, "messageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;I)V"
        }
    .end annotation

    .line 694
    .local p1, "imdnRecRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 700
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 702
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    .line 703
    .local v2, "imdnRecRoute":Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
    invoke-virtual {v2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->setMessageId(I)V

    .line 704
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeImdnRecRouteRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;)Landroid/content/ContentValues;

    move-result-object v3

    .line 705
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v4, "imdnrecroute"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 706
    .local v4, "rowId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 707
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set imdnrecroute id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    long-to-int v6, v4

    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->setId(I)V

    goto :goto_1

    .line 710
    :cond_0
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v7, "SQL exception while inserting a imdnrecroute."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v2    # "imdnRecRoute":Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "rowId":J
    :goto_1
    goto :goto_0

    .line 713
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 716
    nop

    .line 717
    return-void

    .line 715
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 716
    throw v1

    .line 695
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method private insertMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 7
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 730
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "cv":Landroid/content/ContentValues;
    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    move-object v3, p1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeImMessageRow(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Landroid/content/ContentValues;

    move-result-object v1

    goto :goto_0

    .line 743
    :cond_0
    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    move-object v3, p1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeFtMessageRow(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 746
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 747
    return-void

    .line 750
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 752
    :try_start_1
    const-string v2, "message"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 753
    .local v2, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 754
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set message id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    long-to-int v4, v2

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setId(I)V

    .line 756
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 758
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SQL exception while inserting a message."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    .end local v2    # "rowId":J
    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    nop

    .line 763
    return-void

    .line 761
    :catchall_0
    move-exception v2

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 762
    throw v2

    .line 735
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method private insertMessageNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 10
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 774
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 776
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 777
    .local v1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 778
    .local v3, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeMessageNotificationRow(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 779
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v5, "notification"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 780
    .local v5, "rowId":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    .line 781
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set Notification sender_uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :cond_0
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v8, "SQL exception while inserting a notification."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v3    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "rowId":J
    :goto_1
    goto :goto_0

    .line 786
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    .end local v1    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 789
    throw v1

    .line 769
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void
.end method

.method private insertParticipant(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 618
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 620
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 621
    .local v2, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeParticipantRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Landroid/content/ContentValues;

    move-result-object v3

    .line 622
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "participant"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 623
    .local v4, "rowId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 624
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set participant id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    long-to-int v6, v4

    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setId(I)V

    goto :goto_1

    .line 627
    :cond_0
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v7, "SQL exception while inserting a participant."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v2    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "rowId":J
    :goto_1
    goto :goto_0

    .line 630
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 633
    nop

    .line 634
    return-void

    .line 632
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 633
    throw v1

    .line 613
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method private onMessageNotificationUpdated(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 7
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 809
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 810
    .local v0, "participant":Lcom/sec/ims/util/ImsUri;
    if-nez v0, :cond_0

    .line 811
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessageNotificationUpdated participant is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 814
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageNotificationUpdated participant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-wide/16 v1, 0x0

    .line 818
    .local v1, "timeStamp":J
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v3, v4, :cond_2

    .line 819
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v3, v4, :cond_2

    .line 820
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v3, v4, :cond_3

    .line 823
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    .line 821
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v1

    .line 825
    :cond_3
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageNotificationUpdated status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeStamp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v3

    .line 828
    .local v3, "status":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeMessageNotificationUpdateRow(JI)Landroid/content/ContentValues;

    move-result-object v4

    .line 829
    .local v4, "cv":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imdn_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sender_uri"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, "where":Ljava/lang/String;
    const-string v6, "notification"

    invoke-direct {p0, v6, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private onMessageUpdated(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 4
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 793
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "where":Ljava/lang/String;
    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    move-object v3, p1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeImMessageRow(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 798
    :cond_0
    instance-of v2, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    move-object v3, p1

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeFtMessageRow(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Landroid/content/ContentValues;

    move-result-object v0

    .line 801
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 802
    return-void

    .line 805
    :cond_2
    const-string v2, "message"

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method private onParticipantUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 1
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onParticipantUpdated(Ljava/util/Collection;)V

    .line 654
    return-void
.end method

.method private onParticipantUpdated(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 657
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 659
    .local v2, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeParticipantRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Landroid/content/ContentValues;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v2    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 661
    :cond_0
    const-string/jumbo v1, "participant"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Ljava/util/List;)V

    .line 662
    return-void
.end method

.method private query(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "inTable"    # Ljava/lang/String;
    .param p2, "inWhere"    # Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 199
    move-object v1, p0

    const/4 v2, 0x0

    .line 200
    .local v2, "cursor":Landroid/database/Cursor;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v11, v0

    .line 201
    .local v11, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v12, p1

    invoke-virtual {v11, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 205
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v0

    .line 209
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 210
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    if-eqz p2, :cond_0

    .line 213
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->getWhereClause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->getWhereArgs()[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 215
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    move-object v2, v0

    .line 217
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, v13}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    nop

    :goto_1
    invoke-direct {p0, v13}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 222
    goto :goto_2

    .line 221
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_1

    .line 224
    :goto_2
    return-object v2

    .line 221
    :goto_3
    invoke-direct {p0, v13}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 222
    throw v0

    .line 206
    .end local v13    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteDiskIOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v3, 0x0

    return-object v3
.end method

.method private query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "inTable"    # Ljava/lang/String;
    .param p2, "inWhere"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 228
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;

    invoke-direct {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryImImdnRecRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "inWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    const-string v2, "imdnrecroute"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 372
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 373
    nop

    .line 379
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_0
    return-object v0

    .line 376
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeImdnRecRoute(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 380
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v0

    .line 371
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method private queryMessageIds(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "inWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 996
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "projection":[Ljava/lang/String;
    const-string v3, "message"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1002
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 1003
    nop

    .line 1008
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1003
    :cond_0
    return-object v0

    .line 1005
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1006
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1008
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1010
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v0

    .line 1000
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private queryMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "inWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    const-string v2, "message"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 305
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 306
    nop

    .line 317
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_0
    return-object v0

    .line 309
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    const-string v2, "is_filetransfer"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 311
    .local v2, "isFileTransfer":Z
    if-eqz v2, :cond_3

    .line 312
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeFtMessage(Landroid/database/Cursor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeImMessage(Landroid/database/Cursor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v2    # "isFileTransfer":Z
    :goto_2
    goto :goto_0

    .line 317
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 318
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v0

    .line 304
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2
.end method

.method private queryMessagesForTapi(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 136
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 138
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 139
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while queryMessagesForTapi. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 145
    :goto_1
    return-object v0

    .line 143
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    throw v2
.end method

.method private queryParticipants(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "inWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    const-string/jumbo v2, "participant"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 352
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 353
    nop

    .line 358
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_0
    return-object v0

    .line 355
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeParticipant(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 359
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v0

    .line 350
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method private setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 666
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLException while setTransactionSuccessful:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;>;>;"
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;

    invoke-direct {v2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Ljava/util/List;)V

    .line 270
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/content/ContentValues;",
            "Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;",
            ">;>;)V"
        }
    .end annotation

    .line 234
    .local p2, "contentValueAndWhereList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;>;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 238
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 239
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 241
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 242
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/ContentValues;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->getWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 245
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ContentValues;Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;>;"
    :goto_1
    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :goto_2
    nop

    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 256
    goto :goto_4

    .line 255
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while update. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_3

    .line 249
    :catch_1
    move-exception v1

    .line 250
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteOutOfMemoryException while update. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->notifyDeviceOutOfMemory()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_2

    .line 257
    :goto_4
    return-void

    .line 255
    :goto_5
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 256
    throw v1

    .line 235
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method


# virtual methods
.method closeDB()V
    .locals 2

    .line 1445
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "closeDB()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    goto :goto_0

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1450
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public cloudDeleteParticipant(Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, "where":Ljava/lang/String;
    const-string/jumbo v1, "participant"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const/4 v1, 0x0

    return v1
.end method

.method public cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1228
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudInsertMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1241
    :try_start_1
    const-string v2, "message"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1242
    .local v2, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1243
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloudInsertMessage: rowId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1246
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v4, "cloudInsertMessage: SQL exception while inserting a message."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1250
    nop

    .line 1251
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1249
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1250
    throw v0

    .line 1233
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 1234
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-object v0
.end method

.method public cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1369
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1375
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1378
    :try_start_1
    const-string v2, "notification"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1379
    .local v2, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1380
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1382
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v4, "cloudInsertNotification: SQL exception while inserting a notification."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1387
    nop

    .line 1388
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1386
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1387
    throw v0

    .line 1370
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 1371
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-object v0
.end method

.method public cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1311
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1320
    :try_start_1
    const-string/jumbo v2, "participant"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1321
    .local v2, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1322
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloudInsertParticipant: rowId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1325
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v4, "cloudInsertParticipant: SQL exception while inserting a participant."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1330
    nop

    .line 1331
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1329
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1330
    throw v0

    .line 1312
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 1313
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-object v0
.end method

.method public cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1255
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCloudMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1263
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1264
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1265
    const/4 v1, 0x0

    .line 1267
    .local v1, "row":I
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1268
    .local v2, "where":Ljava/lang/String;
    const-string v3, "message"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 1269
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    .end local v2    # "where":Ljava/lang/String;
    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1274
    goto :goto_1

    .line 1273
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1270
    :catch_0
    move-exception v2

    .line 1271
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while updating a message. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1273
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1275
    :goto_1
    return v1

    .line 1273
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1274
    throw v2

    .line 1260
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "row":I
    :catch_1
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v1, 0x0

    return v1
.end method

.method public cloudUpdateNotification(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1392
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudUpdateNotification imdnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1400
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1401
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1402
    const/4 v2, 0x0

    .line 1404
    .local v2, "row":I
    :try_start_1
    const-string v3, "imdn_id=?"

    .line 1405
    .local v3, "where":Ljava/lang/String;
    const-string v4, "notification"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-virtual {v1, v4, p2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .line 1406
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1410
    .end local v3    # "where":Ljava/lang/String;
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1411
    goto :goto_1

    .line 1410
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while updating a message. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1410
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1412
    :goto_1
    return v2

    .line 1410
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1411
    throw v0

    .line 1397
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "row":I
    :catch_1
    move-exception v1

    .line 1398
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return v0
.end method

.method public cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1342
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cloudUpdateParticipant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1350
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1351
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1352
    const/4 v2, 0x0

    .line 1354
    .local v2, "row":I
    :try_start_1
    const-string v3, "_id=?"

    .line 1355
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    move-object v0, v4

    .line 1356
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string/jumbo v4, "participant"

    invoke-virtual {v1, v4, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 1357
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    .end local v0    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1362
    goto :goto_1

    .line 1361
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while updating a message. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1361
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1363
    :goto_1
    return v2

    .line 1361
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1362
    throw v0

    .line 1347
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "row":I
    :catch_1
    move-exception v1

    .line 1348
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return v0
.end method

.method public cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1279
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCloudSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1287
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1288
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1289
    const/4 v2, 0x0

    .line 1291
    .local v2, "row":I
    :try_start_1
    const-string v3, "chat_id=?"

    .line 1292
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    move-object v0, v4

    .line 1293
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string/jumbo v4, "session"

    invoke-virtual {v1, v4, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 1294
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    .end local v0    # "whereArgs":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1299
    goto :goto_1

    .line 1298
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while updating a message. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1298
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1300
    :goto_1
    return v2

    .line 1298
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1299
    throw v0

    .line 1284
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "row":I
    :catch_1
    move-exception v1

    .line 1285
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return v0
.end method

.method protected deleteMessage(I)V
    .locals 2
    .param p1, "messageId"    # I

    .line 836
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessageNotification(I)V

    .line 837
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteImdnRecRoute(I)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "whereClause":Ljava/lang/String;
    const-string v1, "message"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method protected deleteMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 844
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 845
    .local v0, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessageNotification(Ljava/util/List;)V

    .line 846
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteImdnRecRoute(Ljava/util/List;)V

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chat_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "whereClause":Ljava/lang/String;
    const-string v2, "message"

    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method protected deleteParticipant(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 642
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 644
    .local v2, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v2    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    goto :goto_0

    .line 646
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "where":Ljava/lang/String;
    const-string/jumbo v2, "participant"

    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method protected insertParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 1
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    .line 607
    return-void
.end method

.method protected insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 7
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 398
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 407
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeSessionRow(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Landroid/content/ContentValues;

    move-result-object v1

    .line 409
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 411
    :try_start_1
    const-string/jumbo v2, "session"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 412
    .local v2, "rowId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 413
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set chat id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    long-to-int v4, v2

    invoke-virtual {p1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setId(I)V

    .line 415
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 417
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SQL exception while inserting a session."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v2    # "rowId":J
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_0
    move-exception v2

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 421
    throw v2

    .line 403
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method protected onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 8
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 425
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "where":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeSessionRow(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Landroid/content/ContentValues;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-direct {p0, v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "chatId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mResolver:Landroid/content/ContentResolver;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.rcs.im/chat/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 433
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 435
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-ne v3, v5, :cond_1

    .line 436
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.samsung.rcs.cmstore/chat/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 437
    .local v3, "storeUri":Landroid/net/Uri;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSessionUpdated, storeUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", iconPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 440
    .end local v3    # "storeUri":Landroid/net/Uri;
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionUpdated: notifyChange to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method public queryAllChatIDwithFailedFTMessages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1100
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllChatIDwithFailedFTMessages at bootup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(IFNULL(ft_status, 0) == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") AND IFNULL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "direction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", 0) != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1104
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "inWhere":Ljava/lang/String;
    const-string v2, "chat_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    .line 1109
    .local v6, "projection":[Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryAllChatIDwithFailedFTMessages lsj, inWhere: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v4, "message"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1112
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 1113
    nop

    .line 1119
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1113
    :cond_0
    return-object v0

    .line 1115
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1116
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1117
    .local v4, "chatId":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    nop

    .end local v4    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 1119
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1120
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllChatIDwithFailedFTMessages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-object v0

    .line 1111
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method public queryAllChatIDwithPendingMessages()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1073
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllChatIDwithPendingMessages at bootup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(IFNULL(status, 4) != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " OR IFNULL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ft_status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", 4) != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1076
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") AND IFNULL("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "direction"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", 2) != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1077
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "notification_status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1078
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    .local v1, "inWhere":Ljava/lang/String;
    const-string v2, "chat_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    .line 1085
    .local v6, "projection":[Ljava/lang/String;
    const-string v4, "message"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1086
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 1087
    nop

    .line 1093
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1087
    :cond_0
    return-object v0

    .line 1089
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1090
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1091
    .local v4, "chatId":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    nop

    .end local v4    # "chatId":Ljava/lang/String;
    goto :goto_0

    .line 1093
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1094
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryAllChatIDwithPendingMessages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-object v0

    .line 1085
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method public queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "isFtOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "inWhere":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND is_filetransfer = \'1\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryAllSessionByParticipant(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/List;
    .locals 12
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryAllSessionByParticipant chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v0, "session, participant"

    .line 530
    .local v0, "inTable":Ljava/lang/String;
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "session"

    const/4 v8, 0x0

    aput-object v2, v1, v8

    const/4 v9, 0x1

    const-string v2, "chat_id"

    aput-object v2, v1, v9

    const/4 v3, 0x2

    const-string/jumbo v4, "participant"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "chat_type"

    aput-object v3, v1, v2

    .line 531
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 530
    const-string v2, "%s.%s=%s.%s and %s=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "inWhere":Ljava/lang/String;
    const-string v2, "DISTINCT session.chat_id"

    const-string/jumbo v3, "participant.uri"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 536
    .local v10, "chatId":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 538
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 539
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 540
    const/4 v3, 0x0

    .line 550
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_0
    return-object v3

    .line 542
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 544
    .local v3, "participantUri":Lcom/sec/ims/util/ImsUri;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 545
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 546
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    .end local v3    # "participantUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_0

    .line 549
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chats found: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 551
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    return-object v11

    .line 538
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v3
.end method

.method public queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 149
    const-string v1, "chatmessageview"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesForTapi(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryChatbotRoleUris()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1204
    const-string/jumbo v6, "participant, session"

    .line 1205
    .local v6, "inTable":Ljava/lang/String;
    const-string/jumbo v7, "participant.chat_id = session.chat_id AND session.is_group_chat = 0 AND session.is_chatbot_role = 1"

    .line 1209
    .local v7, "inWhere":Ljava/lang/String;
    const-string/jumbo v8, "uri"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1214
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1216
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1217
    nop

    .line 1222
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1217
    :cond_0
    return-object v9

    .line 1219
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1222
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1223
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryChatbotRoleUris: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-object v9

    .line 1214
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public queryFtMessageByFileTransferId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 3
    .param p1, "ftId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_filetransfer = \'1\' AND file_transfer_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 949
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    const/4 v2, 0x0

    return-object v2

    .line 952
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object v2
.end method

.method public queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 153
    const-string v1, "filetransferview"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesForTapi(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;
    .locals 2
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation

    .line 720
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imdn_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 726
    .end local v0    # "inWhere":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public queryLastSentMessages(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1145
    .local p1, "listRequestMessageId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "chat_id"

    const-string/jumbo v3, "request_message_id"

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryLastSentMessages listRequestMessageId size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1153
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 1154
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1156
    :try_start_1
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v15, v6

    .line 1157
    .local v15, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "message"

    invoke-virtual {v15, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1158
    const/4 v6, 0x0

    .line 1159
    .local v6, "orderBy":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1160
    .local v7, "limit":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "list of request message ids"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v14, 0x1

    if-lt v8, v14, :cond_0

    .line 1162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "request_message_id IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-static {v9, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_0

    .line 1164
    :cond_0
    const-string/jumbo v8, "sent_timestamp DESC"

    move-object v6, v8

    .line 1165
    const-string v8, "1"

    move-object v7, v8

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .line 1167
    .end local v6    # "orderBy":Ljava/lang/String;
    .end local v7    # "limit":Ljava/lang/String;
    .local v16, "orderBy":Ljava/lang/String;
    .local v17, "limit":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v15

    move-object v7, v5

    move-object/from16 v13, v16

    move v2, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1168
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1169
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1170
    .local v7, "requestMessageID":I
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1171
    .local v8, "chatID":Ljava/lang/String;
    const-string v9, "is_filetransfer"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1173
    .local v9, "isFileTransfer":I
    const/4 v10, 0x0

    .line 1174
    .local v10, "resumeable":I
    if-nez v9, :cond_1

    .line 1175
    const-string/jumbo v11, "status"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .local v11, "status":I
    goto :goto_2

    .line 1177
    .end local v11    # "status":I
    :cond_1
    const-string v11, "ft_status"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1178
    .restart local v11    # "status":I
    const-string v12, "is_resumable"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move v10, v12

    .line 1181
    :goto_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1182
    .local v12, "bundle":Landroid/os/Bundle;
    invoke-virtual {v12, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    int-to-long v13, v7

    invoke-virtual {v12, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1184
    const-string v13, "is_file_transfer"

    invoke-virtual {v12, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1185
    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v14, "response_status"

    if-ne v11, v13, :cond_2

    .line 1186
    const/4 v13, 0x0

    :try_start_3
    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1187
    :cond_2
    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13

    if-ne v11, v13, :cond_3

    .line 1188
    invoke-virtual {v12, v14, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1190
    :cond_3
    :goto_3
    const-string/jumbo v13, "resumable_option_code"

    invoke-virtual {v12, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1191
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1192
    nop

    .end local v7    # "requestMessageID":I
    .end local v8    # "chatID":Ljava/lang/String;
    .end local v9    # "isFileTransfer":I
    .end local v10    # "resumeable":I
    .end local v11    # "status":I
    .end local v12    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 1193
    :cond_4
    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1194
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1198
    .end local v15    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v16    # "orderBy":Ljava/lang/String;
    .end local v17    # "limit":Ljava/lang/String;
    goto :goto_5

    .line 1167
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "orderBy":Ljava/lang/String;
    .restart local v17    # "limit":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_6

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .end local p1    # "listRequestMessageId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_4
    throw v2
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1198
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v15    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v16    # "orderBy":Ljava/lang/String;
    .end local v17    # "limit":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .restart local p1    # "listRequestMessageId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Landroid/database/SQLException;
    :try_start_7
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while queryAllChatIDwithPendingMessages. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1198
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    :goto_5
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1199
    nop

    .line 1200
    return-object v4

    .line 1198
    :goto_6
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1199
    throw v0

    .line 1150
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteDiskIOException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-object v4
.end method

.method public queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 391
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x0

    return-object v1

    .line 394
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    return-object v1
.end method

.method public queryMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3
    .param p1, "imdn"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imdn_message_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 938
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    const/4 v2, 0x0

    return-object v2

    .line 941
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    return-object v2
.end method

.method public queryMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 4
    .param p1, "imdn"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "ownImsi"    # Ljava/lang/String;

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imdn_message_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "chat_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sim_imsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 920
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    const/4 v2, 0x0

    return-object v2

    .line 923
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    return-object v2
.end method

.method public queryMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "timestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1061
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMessageIdsForDisplayAggregation: chatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notification_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1064
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "notification_disposition_mask"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " & "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1066
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != 0 AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "delivered_timestamp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " <= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryMessageIdsForPendingNotification(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1051
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMessagesForPendingNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND (IFNULL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 4) != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1053
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_filetransfer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 1) AND IFNULL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 2) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1055
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "notification_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disposition_notification_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    .line 181
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 186
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    :try_start_1
    const-string v3, "notification"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 189
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    goto :goto_1

    .line 193
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying all sessions. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 195
    :goto_1
    return-object v0

    .line 193
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    throw v2

    .line 182
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 116
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 121
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 123
    :try_start_1
    const-string v3, "message"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 124
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying all sessions. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 130
    :goto_1
    return-object v0

    .line 128
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    throw v2

    .line 117
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 899
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryMessagesByChatIdForDump(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 25
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "maxCount"    # I

    .line 964
    move-object/from16 v1, p0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v11, v0

    .line 965
    .local v11, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v0, "message"

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 966
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 968
    .local v13, "inWhere":Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;
    const-string v14, "imdn_message_id"

    const-string v15, "message_type"

    const-string v16, "body"

    const-string v17, "file_name"

    const-string/jumbo v18, "status"

    const-string v19, "bytes_transf"

    const-string v20, "file_size"

    const-string v21, "direction"

    const-string/jumbo v22, "sent_timestamp"

    const-string v23, "delivered_timestamp"

    const-string v24, "notification_status"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 978
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 979
    const/4 v15, 0x0

    .line 980
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 982
    :try_start_1
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->getWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->getWhereArgs()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "sent_timestamp DESC"

    .line 983
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 982
    move-object v2, v11

    move-object v3, v14

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v15, v0

    .line 984
    invoke-direct {v1, v14}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    nop

    :goto_0
    invoke-direct {v1, v14}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 989
    goto :goto_1

    .line 988
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 988
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 990
    :goto_1
    return-object v15

    .line 988
    :goto_2
    invoke-direct {v1, v14}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 989
    throw v0

    .line 975
    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 976
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteDiskIOException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryMessagesIdsForRevoke(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1032
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryImMessagesIdsForRevoke:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "revocation_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 1035
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 1036
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, "inWhere":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .local v1, "needToRevokeMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "message"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1040
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1041
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v3

    .line 1045
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1047
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v1
.end method

.method public queryNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 8
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imdn_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sender_uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "where":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1132
    .local v1, "status":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    const-string v3, "notification"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1133
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 1134
    const/4 v3, 0x0

    .line 1140
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1134
    :cond_0
    return-object v3

    .line 1136
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1137
    const-string/jumbo v3, "status"

    .line 1138
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1137
    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 1140
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1141
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v1

    .line 1132
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v3
.end method

.method public queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chat_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    .line 160
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 165
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 167
    :try_start_1
    const-string/jumbo v3, "participant"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 168
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    goto :goto_1

    .line 172
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying all sessions. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 174
    :goto_1
    return-object v0

    .line 172
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    throw v2

    .line 161
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryPendingMessageIds(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1014
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryPendingMessageIds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND ((IFNULL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1021
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1022
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") AND IFNULL("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "direction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1023
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1024
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") OR (IFNULL("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "inWhere":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 485
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x0

    return-object v1

    .line 488
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    return-object v1
.end method

.method public querySessionByChatType(Z)Ljava/util/List;
    .locals 5
    .param p1, "isGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_group_chat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "\'1\'"

    goto :goto_0

    :cond_0
    const-string v1, "\'0\'"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 473
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    const/4 v1, 0x0

    return-object v1

    .line 476
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 478
    .local v3, "chat":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v3    # "chat":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    goto :goto_1

    .line 480
    :cond_2
    return-object v1
.end method

.method public querySessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "isGroupChat"    # Z

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contribution_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_group_chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    if-eqz p3, :cond_0

    const-string v1, "\'1\'"

    goto :goto_0

    :cond_0
    const-string v1, "\'0\'"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "inWhere":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 496
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    const/4 v2, 0x0

    return-object v2

    .line 499
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    return-object v2
.end method

.method public querySessionByConversationId(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "isGroupChat"    # Z

    .line 503
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySessionByConversationId cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conversation_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_group_chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    if-eqz p2, :cond_0

    const-string v1, "\'1\'"

    goto :goto_0

    :cond_0
    const-string v1, "\'0\'"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "inWhere":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 509
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    const/4 v2, 0x0

    return-object v2

    .line 512
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    return-object v2
.end method

.method public querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 17
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;"
        }
    .end annotation

    .line 555
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v1, p1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "querySessionByParticipants chatType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " participants="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string/jumbo v2, "session, participant"

    .line 557
    .local v2, "inTable":Ljava/lang/String;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "session"

    const/4 v10, 0x0

    aput-object v4, v0, v10

    const/4 v11, 0x1

    const-string v4, "chat_id"

    aput-object v4, v0, v11

    const-string/jumbo v5, "participant"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const/4 v4, 0x4

    const-string v5, "chat_type"

    aput-object v5, v0, v4

    .line 558
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 557
    const-string v4, "%s.%s=%s.%s and %s=%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "inWhere":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " and %s=%s"

    if-nez v4, :cond_0

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "sim_imsi"

    aput-object v7, v6, v10

    aput-object p3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 562
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "chat_mode"

    aput-object v7, v6, v10

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 564
    .end local v0    # "inWhere":Ljava/lang/String;
    .local v12, "inWhere":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "session.chat_id"

    const-string v4, "group_concat(participant.uri)"

    const-string/jumbo v5, "session.preferred_uri"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v7

    .line 569
    .local v7, "projection":[Ljava/lang/String;
    const-string/jumbo v13, "session.chat_id"

    .line 570
    .local v13, "groupBy":Ljava/lang/String;
    const/4 v14, 0x0

    .line 572
    .local v14, "chatId":Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 573
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    if-nez v4, :cond_2

    .line 574
    nop

    .line 594
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 574
    :cond_1
    return-object v0

    .line 576
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 577
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "p":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 579
    goto :goto_1

    .line 582
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 583
    .local v6, "comp":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v15, v10

    :goto_2
    if-ge v15, v9, :cond_4

    aget-object v16, v8, v15

    .line 584
    .local v16, "str":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    nop

    .end local v16    # "str":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_2

    .line 586
    :cond_4
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "querySessionByParticipants compare participants="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-interface {v1, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 589
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 590
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Chat found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    goto :goto_3

    .line 593
    .end local v5    # "p":Ljava/lang/String;
    .end local v6    # "comp":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    .line 594
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 596
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_7
    if-nez v14, :cond_8

    .line 597
    return-object v0

    .line 600
    :cond_8
    move-object/from16 v5, p0

    invoke-virtual {v5, v14}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    return-object v0

    .line 572
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    move-object v6, v0

    if-eqz v4, :cond_9

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v6
.end method

.method public querySessionForAutoRejoin()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(status = \'1\' OR status = \'3\' OR status = \'4\') AND chat_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 454
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "inWhere":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "chat_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "session"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 461
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 462
    nop

    .line 467
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_0
    return-object v1

    .line 464
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 468
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v1

    .line 458
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v3
.end method

.method public querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->mImDBHelper:Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 100
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 102
    :try_start_1
    const-string/jumbo v3, "session"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 103
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->setTransactionSuccessful(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    nop

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying all sessions. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 109
    :goto_1
    return-object v0

    .line 107
    :goto_2
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    throw v2

    .line 96
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x0

    return-object v2
.end method

.method public querySessions(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "inWhere"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;>;"
    const-string/jumbo v2, "session"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 331
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 332
    nop

    .line 337
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_0
    return-object v0

    .line 334
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->makeSession(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 338
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v0

    .line 330
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method public updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 1453
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1454
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    goto :goto_0

    .line 1455
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_1

    .line 1456
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    goto :goto_0

    .line 1457
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_2

    .line 1458
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 1460
    :cond_2
    :goto_0
    return-void
.end method

.method public updateDesiredNotificationStatusAsDisplayed(Ljava/util/Collection;IJ)V
    .locals 7
    .param p2, "status"    # I
    .param p3, "displayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .line 1416
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDesiredNotificationStatusAsDisplayed: messages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    .local v0, "where":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1420
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "disposition_notification_status"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1421
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "displayed_timestamp"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1423
    const-string v4, "message"

    invoke-direct {p0, v4, v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND IFNULL("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", 4) != "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1426
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1427
    .local v2, "where2":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1428
    .local v5, "cv2":Landroid/content/ContentValues;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1430
    invoke-direct {p0, v4, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method public updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 1463
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_1

    .line 1464
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1465
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    .line 1466
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertMessageNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1468
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnRecRouteList()Ljava/util/List;

    move-result-object v0

    .line 1469
    .local v0, "imdnRecRoutes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1470
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertImdnRecRoute(Ljava/util/Collection;I)V

    goto :goto_0

    .line 1472
    .end local v0    # "imdnRecRoutes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_2

    .line 1473
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onMessageUpdated(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1474
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_3

    .line 1475
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onMessageNotificationUpdated(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_1

    .line 1472
    :cond_2
    :goto_0
    nop

    .line 1478
    :cond_3
    :goto_1
    return-void
.end method

.method public updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 2
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 1491
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1492
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 1493
    .end local v1    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 1494
    :cond_0
    return-void
.end method

.method public updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .param p1, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 1481
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1482
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    .line 1483
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_1

    .line 1484
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_0

    .line 1485
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_2

    .line 1486
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onParticipantUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 1488
    :cond_2
    :goto_0
    return-void
.end method

.method public updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .param p2, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 1497
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_0

    .line 1498
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    goto :goto_0

    .line 1499
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_1

    .line 1500
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Ljava/util/Collection;)V

    goto :goto_0

    .line 1501
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    if-ne p2, v0, :cond_2

    .line 1502
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onParticipantUpdated(Ljava/util/Collection;)V

    .line 1504
    :cond_2
    :goto_0
    return-void
.end method
