.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;
.super Landroid/content/ContentProvider;
.source "PresenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;
    }
.end annotation


# static fields
.field private static final EVENT_INITIALIZE:I = 0x6a

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceProvider"

.field private static final N_LOOKUP_URI_ID:I = 0x3

.field private static final OPTIONS_PATTERN:Ljava/util/regex/Pattern;

.field private static final OWN_INFO:I = 0x1

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.presence"

.field private static final RCS_STATE:I = 0x2

.field private static final SERVICE_PROJECTION:[Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private mService:Lcom/sec/ims/presence/IPresenceService;

.field private mServiceHandler:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 59
    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 66
    const-string v1, "com.samsung.rcs.presence"

    const-string/jumbo v2, "own"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "rcs_state"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "lookup/*/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    const-string v4, "display_name"

    const-string v5, "mood_text"

    const-string v6, "homepage"

    const-string v7, "email"

    const-string v8, "birthday"

    const-string v9, "facebook"

    const-string/jumbo v10, "twitter"

    const-string v11, "cyworld"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mService:Lcom/sec/ims/presence/IPresenceService;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->initPresecenceService()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;Lcom/sec/ims/presence/IPresenceService;)Lcom/sec/ims/presence/IPresenceService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;
    .param p1, "x1"    # Lcom/sec/ims/presence/IPresenceService;

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mService:Lcom/sec/ims/presence/IPresenceService;

    return-object p1
.end method

.method private initPresecenceService()V
    .locals 5

    .line 155
    const-string v0, "PresenceProvider"

    const-string v1, "initPresecenceService: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "Connecting to SocialPresenceService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.PresenceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;)V

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 178
    return-void
.end method

.method private serveContactPresenceInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "contactId"    # Ljava/lang/String;

    .line 205
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 206
    .local v0, "mc":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .line 209
    .local v1, "info":Lcom/sec/ims/presence/PresenceInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mService:Lcom/sec/ims/presence/IPresenceService;

    invoke-interface {v2, p1}, Lcom/sec/ims/presence/IPresenceService;->getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 213
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v1, :cond_0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serveContactPresenceInfo: not found - contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v0

    .line 218
    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 219
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getMoodText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 220
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getHomepage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 221
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getBirthday()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getFacebook()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 222
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getTwitter()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getCyworld()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 218
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 225
    return-object v0
.end method

.method private serveOwnPresenceInfo()Landroid/database/Cursor;
    .locals 5

    .line 181
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 183
    .local v0, "mc":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .line 185
    .local v1, "info":Lcom/sec/ims/presence/PresenceInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mService:Lcom/sec/ims/presence/IPresenceService;

    invoke-interface {v2}, Lcom/sec/ims/presence/IPresenceService;->getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v1, :cond_0

    .line 190
    const-string v2, "PresenceProvider"

    const-string/jumbo v3, "serveOwnPresenceInfo: not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v0

    .line 194
    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 195
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getMoodText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 196
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getHomepage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 197
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getBirthday()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getFacebook()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 198
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getTwitter()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getCyworld()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 194
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 201
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PresenceService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mServiceLooper:Landroid/os/Looper;

    .line 87
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mServiceHandler:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;

    .line 88
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mServiceHandler:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$ServiceHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mMessenger:Landroid/os/Messenger;

    .line 91
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 92
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 93
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PresenceProvider"

    const-string v3, "initialize failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query - uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", args: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->mService:Lcom/sec/ims/presence/IPresenceService;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 127
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 132
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 134
    .local v3, "lookupId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, "c":Landroid/database/Cursor;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNDEFINED CATEGORY! | Operation for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 143
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->serveContactPresenceInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 144
    goto :goto_0

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->serveOwnPresenceInfo()Landroid/database/Cursor;

    move-result-object v4

    .line 139
    nop

    .line 151
    :goto_0
    return-object v4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operation not supported for uri:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
