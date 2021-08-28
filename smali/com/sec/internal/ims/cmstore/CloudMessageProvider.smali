.class public Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
.super Landroid/content/ContentProvider;
.source "CloudMessageProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cmstore"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 51
    const-string v1, "com.samsung.rcs.cmstore"

    const-string/jumbo v2, "smsmessages/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspdumessage/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmsaddrmessages/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspartmessages/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "mmspartmessages_partid/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcschatmessage/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcsftmessage/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcsmessages/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcsparticipants/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcssession/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "notification/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "summarytable/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcsmessageimdn/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vvmmessages/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vvmprofile/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vvmgreeting/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vvmpin/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "calllog/*"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "faxmessages/*"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "multilinestatus/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingsmsmessages"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingmmspdumessage"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingrcschatmessage"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingrcsftmessage"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingvvmmessages"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingfaxmessages"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "pendingcalllog"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "latestmessage/#"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allsmsmessages"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "allmmspdumessage"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "userdebugflag"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "migrate_success"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "updatedrows":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 155
    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 179
    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 171
    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 167
    goto :goto_0

    .line 161
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 163
    goto :goto_0

    .line 157
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 159
    nop

    .line 183
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .line 194
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 227
    .local v0, "result":Landroid/net/Uri;
    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .line 232
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->init(Landroid/content/Context;)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 531
    .local v0, "match":I
    const/16 v1, 0x9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI invalid. Use an id-based URI only."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 537
    .local v3, "path":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 538
    .local v4, "c":Landroid/database/Cursor;
    if-eqz v4, :cond_b

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 543
    const/4 v5, -0x1

    .line 544
    .local v5, "i":I
    if-ne v0, v2, :cond_2

    .line 545
    const-string v1, "_data"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    .line 546
    :cond_2
    if-ne v0, v1, :cond_3

    .line 547
    const-string v1, "file_path"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    .line 549
    :cond_3
    :goto_1
    if-ltz v5, :cond_4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    move-object v3, v1

    .line 551
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_a

    .line 553
    if-eqz v3, :cond_9

    .line 556
    .end local v5    # "i":I
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 557
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_5
    const/4 v1, 0x0

    .line 558
    .local v1, "imode":I
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 560
    const/high16 v4, 0x20000000

    or-int/2addr v1, v4

    .line 561
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 563
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    goto :goto_3

    .line 564
    :catch_0
    move-exception v4

    .line 566
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 570
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_3
    const-string/jumbo v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v4, 0x10000000

    or-int/2addr v1, v4

    .line 571
    :cond_7
    const-string v4, "+"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x2000000

    or-int/2addr v1, v4

    .line 572
    :cond_8
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    return-object v4

    .line 554
    .end local v1    # "imode":I
    .end local v2    # "file":Ljava/io/File;
    .local v4, "c":Landroid/database/Cursor;
    .restart local v5    # "i":I
    :cond_9
    :try_start_2
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "File path is null"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "match":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    throw v1

    .line 552
    .restart local v0    # "match":I
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple items at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "match":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    throw v1

    .line 540
    .end local v5    # "i":I
    .restart local v0    # "match":I
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "match":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    .restart local v0    # "match":I
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_c

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v8, 0x0

    .line 245
    .local v8, "cs":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 246
    .local v9, "selectionArgsPending":[Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, v7}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x23

    if-eq v1, v2, :cond_3

    const/16 v2, 0x63

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_2

    move-object/from16 v10, p3

    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 420
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 421
    .local v1, "dbindex":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LASTEST Message DB index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v4, "MAX(_bufferdbid)"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    .line 423
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v14, "selectionArgs":[Ljava/lang/String;
    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p3

    goto/16 :goto_1

    .line 429
    :cond_1
    :goto_0
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move v11, v1

    invoke-virtual/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object/from16 v10, p3

    goto/16 :goto_1

    .line 416
    .end local v1    # "dbindex":I
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :pswitch_1
    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 418
    move-object/from16 v10, p3

    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 412
    :pswitch_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 414
    move-object/from16 v10, p3

    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 403
    :pswitch_3
    const-string/jumbo v10, "syncdirection=? OR syncdirection=?"

    .line 405
    .end local p3    # "selection":Ljava/lang/String;
    .local v10, "selection":Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 406
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 407
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    move-object v5, v1

    .line 408
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .local v5, "selectionArgsPending":[Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v2, 0x10

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 410
    move-object/from16 v14, p4

    move-object v9, v5

    goto/16 :goto_1

    .line 394
    .end local v5    # "selectionArgsPending":[Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v1, "syncdirection=? OR syncdirection=?"

    .line 396
    .end local p3    # "selection":Ljava/lang/String;
    .local v1, "selection":Ljava/lang/String;
    new-array v15, v4, [Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 397
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 398
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v3

    .line 399
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .local v15, "selectionArgsPending":[Ljava/lang/String;
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v12, 0x15

    move-object/from16 v13, p2

    move-object v14, v1

    move-object/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 401
    move-object/from16 v14, p4

    move-object v10, v1

    move-object v9, v15

    goto/16 :goto_1

    .line 385
    .end local v1    # "selection":Ljava/lang/String;
    .end local v15    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v1, "syncdirection=? OR syncdirection=?"

    .line 387
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v1    # "selection":Ljava/lang/String;
    new-array v13, v4, [Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 388
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 389
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v3

    .line 390
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .local v13, "selectionArgsPending":[Ljava/lang/String;
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v10, 0x11

    move-object/from16 v11, p2

    move-object v12, v1

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 392
    move-object/from16 v14, p4

    move-object v10, v1

    move-object v9, v13

    goto/16 :goto_1

    .line 374
    .end local v1    # "selection":Ljava/lang/String;
    .end local v13    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v1, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    .line 377
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v1    # "selection":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 378
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 379
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 380
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    move-object/from16 v18, v2

    .line 381
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .local v18, "selectionArgsPending":[Ljava/lang/String;
    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v15, 0x1

    move-object/from16 v16, p2

    move-object/from16 v17, v1

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v19}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 383
    move-object/from16 v14, p4

    move-object v10, v1

    move-object/from16 v9, v18

    goto/16 :goto_1

    .line 363
    .end local v1    # "selection":Ljava/lang/String;
    .end local v18    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v1, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    .line 366
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v1    # "selection":Ljava/lang/String;
    new-array v13, v2, [Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 367
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 368
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v3

    .line 369
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v4

    .line 370
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v13    # "selectionArgsPending":[Ljava/lang/String;
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v10, 0x1

    move-object/from16 v11, p2

    move-object v12, v1

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 372
    move-object/from16 v14, p4

    move-object v10, v1

    move-object v9, v13

    goto/16 :goto_1

    .line 354
    .end local v1    # "selection":Ljava/lang/String;
    .end local v13    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v1, "syncdirection=? OR syncdirection=?"

    .line 356
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v1    # "selection":Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 357
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 358
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v18, v2

    .line 359
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v18    # "selectionArgsPending":[Ljava/lang/String;
    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v15, 0x4

    move-object/from16 v16, p2

    move-object/from16 v17, v1

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v19}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 361
    move-object/from16 v14, p4

    move-object v10, v1

    move-object/from16 v9, v18

    goto/16 :goto_1

    .line 345
    .end local v1    # "selection":Ljava/lang/String;
    .end local v18    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v1, "syncdirection=? OR syncdirection=?"

    .line 347
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v1    # "selection":Ljava/lang/String;
    new-array v13, v4, [Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 348
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 349
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v3

    .line 350
    .end local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v13    # "selectionArgsPending":[Ljava/lang/String;
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v10, 0x3

    move-object/from16 v11, p2

    move-object v12, v1

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 352
    move-object/from16 v14, p4

    move-object v10, v1

    move-object v9, v13

    goto/16 :goto_1

    .line 310
    .end local v1    # "selection":Ljava/lang/String;
    .end local v13    # "selectionArgsPending":[Ljava/lang/String;
    .restart local v9    # "selectionArgsPending":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_a
    const-string v10, "linenum= ?"

    .line 311
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x17

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 313
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 340
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_b
    const-string v10, "_bufferdbid= ?"

    .line 341
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x15

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 343
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 325
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_c
    const-string v10, "_bufferdbid= ?"

    .line 326
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x14

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 328
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 335
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_d
    const-string v10, "_bufferdbid= ?"

    .line 336
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x13

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 338
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 330
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_e
    const-string v10, "_bufferdbid= ?"

    .line 331
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x12

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 320
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_f
    const-string v10, "_bufferdbid= ?"

    .line 321
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x11

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 323
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 315
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_10
    const-string v10, "_bufferdbid= ?"

    .line 316
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0x10

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 318
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 305
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_11
    const-string v10, "imdn_message_id= ?"

    .line 306
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 308
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 300
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_12
    const-string v10, "chat_id= ?"

    .line 301
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0xa

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 303
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 288
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "rowId":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RCS_MESSAGE_ID bufferDB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 290
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    move-object/from16 v10, p3

    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 283
    .end local v1    # "rowId":Ljava/lang/String;
    :pswitch_14
    const-string v10, "_bufferdbid= ?"

    .line 284
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x6

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 286
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 248
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_15
    const-string v10, "_bufferdbid= ?"

    .line 249
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x7

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 251
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 273
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_16
    const-string v10, "mid= ?"

    .line 274
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x6

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 276
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 278
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_17
    const-string v10, "msg_id= ?"

    .line 279
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x5

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 268
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_18
    const-string v10, "_bufferdbid= ?"

    .line 269
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x4

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 271
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 263
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_19
    const-string v10, "_bufferdbid= ?"

    .line 264
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x3

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 266
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 258
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_1a
    const-string v10, "chat_id= ?"

    .line 259
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x2

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 261
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 253
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :pswitch_1b
    const-string v10, "_bufferdbid= ?"

    .line 254
    .end local p3    # "selection":Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 256
    move-object/from16 v14, p4

    goto/16 :goto_1

    .line 433
    .end local v10    # "selection":Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "USER_DEBUG_FLAG"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    .line 435
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v10, "AMBS_DEBUG"

    const-string v11, "app_id"

    const-string v12, "cps_host_name"

    const-string v13, "auth_host_name"

    const-string/jumbo v14, "retry_time"

    const-string v15, "nc_host_name"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 437
    .local v1, "matrixCursor":Landroid/database/MatrixCursor;
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 438
    .local v2, "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    sget-boolean v3, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 439
    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 440
    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 441
    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 442
    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 443
    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 444
    move-object v8, v1

    .line 445
    move-object/from16 v10, p3

    move-object/from16 v14, p4

    goto :goto_1

    .line 447
    .end local v1    # "matrixCursor":Landroid/database/MatrixCursor;
    .end local v2    # "rowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "DATABASE MIGRATE FLAG"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMigrateSuccessFlag()Z

    move-result v1

    .line 449
    .local v1, "flag":Z
    new-instance v2, Landroid/database/MatrixCursor;

    const-string v3, "migrate_success"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 450
    .local v2, "returnCursor":Landroid/database/MatrixCursor;
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 451
    .local v3, "returnRowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 452
    move-object v8, v2

    .line 453
    move-object/from16 v10, p3

    move-object/from16 v14, p4

    goto :goto_1

    .line 294
    .end local v1    # "flag":Z
    .end local v2    # "returnCursor":Landroid/database/MatrixCursor;
    .end local v3    # "returnRowBuilder":Landroid/database/MatrixCursor$RowBuilder;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "rowId":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RCS_MESSAGES_IMDN bufferDB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 296
    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v8

    .line 298
    move-object/from16 v10, p3

    move-object/from16 v14, p4

    .line 457
    .end local v1    # "rowId":Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "selection":Ljava/lang/String;
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 462
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "updatedrows":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 466
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 468
    goto/16 :goto_2

    .line 488
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 491
    goto/16 :goto_2

    .line 493
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 496
    goto/16 :goto_2

    .line 483
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 486
    goto :goto_2

    .line 479
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 481
    goto :goto_2

    .line 474
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 477
    goto :goto_2

    .line 470
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 472
    goto :goto_2

    .line 499
    :cond_0
    const-string v1, "AMBS_DEBUG"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 500
    .local v1, "isDebug":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 501
    const-string v2, "app_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "appId":Ljava/lang/String;
    const-string v4, "cps_host_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "cpsHostName":Ljava/lang/String;
    const-string v5, "auth_host_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "authHostName":Ljava/lang/String;
    const-string/jumbo v6, "retry_time"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "timeLine":Ljava/lang/String;
    const-string v7, "nc_host_name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, "ncHostName":Ljava/lang/String;
    invoke-static {v2, v5, v4, v7}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 510
    sput-boolean v3, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 511
    if-eqz v6, :cond_2

    .line 512
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    .line 514
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "cpsHostName":Ljava/lang/String;
    .end local v5    # "authHostName":Ljava/lang/String;
    .end local v6    # "timeLine":Ljava/lang/String;
    .end local v7    # "ncHostName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 515
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 516
    sput-boolean v4, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 517
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 518
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 520
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDebug()V

    .line 521
    nop

    .line 525
    .end local v1    # "isDebug":Z
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
