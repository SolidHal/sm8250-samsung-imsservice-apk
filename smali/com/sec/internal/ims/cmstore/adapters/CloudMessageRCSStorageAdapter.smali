.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;
.super Ljava/lang/Object;
.source "CloudMessageRCSStorageAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final PROVIDER_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "com.samsung.rcs.im"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->PROVIDER_NAME:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public deleteParticipantsUsingRowId(J)I
    .locals 5
    .param p1, "_id"    # J

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeleteparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, "delParticipantUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 114
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 113
    const-string v3, "chat_id =?"

    invoke-virtual {v1, v0, v3, v2}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteRCSDBmessageUsingId(I)I
    .locals 6
    .param p1, "_id"    # I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/clouddeletemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, "deleteMessageUri":Landroid/net/Uri;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 141
    .local v1, "_ID":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 141
    const-string v4, "_id=?"

    invoke-virtual {v2, v0, v4, v3}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public insertMessageFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 40
    const-string v0, "content://com.samsung.rcs.im/cloudinsertmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, "insertMessageUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 42
    .local v1, "insertResult":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 43
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    :cond_0
    return-object v1
.end method

.method public insertNotificationFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "content://com.samsung.rcs.im/cloudinsertnotification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 162
    .local v0, "insertMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public insertParticipantsFromBufferDbToRCSDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "cvInsert"    # Landroid/content/ContentValues;

    .line 74
    const-string v0, "content://com.samsung.rcs.im/cloudinsertparticipant"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .local v0, "partUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I
    .locals 5
    .param p1, "session"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .line 50
    .local p2, "listpart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "content://com.samsung.rcs.im/cloudinsertsession"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    .local v0, "insertSessionUri":Landroid/net/Uri;
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSessionFromBufferDb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 56
    .local v1, "count":I
    new-array v2, v1, [Landroid/content/ContentValues;

    .line 57
    .local v2, "cvArray":[Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    .line 58
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    .line 57
    invoke-virtual {v3, v0, v4}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->insertSingleSessionPartsToDB(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    return v3
.end method

.method public queryAllMessage()Landroid/database/Cursor;
    .locals 7

    .line 93
    const-string v0, "content://com.samsung.rcs.im/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "queryMessageUri":Landroid/net/Uri;
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "queryAllMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .locals 7

    .line 87
    const-string v0, "content://com.samsung.rcs.im/session"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagechatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryIMFTUsingRowId(J)Landroid/database/Cursor;
    .locals 7
    .param p1, "_id"    # J

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessagerowid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "imdnId"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/messagenotifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudqueryparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "imdnId"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerymessageimdnid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionchatid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public querySessionUsingId(I)Landroid/database/Cursor;
    .locals 7
    .param p1, "_id"    # I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudquerysessionid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, "queryMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public updateMessageFromBufferDb(ILandroid/content/ContentValues;)I
    .locals 5
    .param p1, "rowID"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatemessage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, "updateMessageUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 81
    const-string v3, "_id=?"

    invoke-virtual {v1, v0, p2, v3, v2}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateParticipantsFromBufferDbToRCSDb(JLandroid/content/ContentValues;)I
    .locals 5
    .param p1, "_id"    # J
    .param p3, "cvupdate"    # Landroid/content/ContentValues;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdateparticipant/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    .local v0, "partUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 69
    const-string v3, "_id =?"

    invoke-virtual {v1, v0, p3, v3, v2}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateRCSNotificationUsingImsdId(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 166
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 167
    return v0

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.rcs.im/cloudupdatenotification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, "updateMessageUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v0

    const-string v0, "imdn_id=?"

    invoke-virtual {v2, v1, p2, v0, v3}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.im/cloudupdatesession/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, "sessionUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->mRCSDBHelper:Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "chat_id=?"

    invoke-virtual {v1, v0, p2, v3, v2}, Lcom/sec/internal/ims/cmstore/helper/RCSDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
