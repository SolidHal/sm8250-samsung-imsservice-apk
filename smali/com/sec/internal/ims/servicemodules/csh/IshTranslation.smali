.class public Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
.super Ljava/lang/Object;
.source "IshTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    .line 36
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ishServiceModule"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    .line 44
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestNewShare(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    return-void
.end method

.method private requestAcceptShare(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAcceptShare: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 77
    .local v1, "sharedId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->acceptShare(J)V

    .line 78
    return-void
.end method

.method private requestCancelShare(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCancelShare: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 85
    .local v1, "sharedId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->cancelShare(J)V

    .line 87
    return-void
.end method

.method private requestNewShare(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNewShare: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 67
    .local v1, "contactUri":Landroid/net/Uri;
    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "filePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 70
    return-void
.end method


# virtual methods
.method public broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "shareDirection"    # I
    .param p5, "notificationReason"    # I

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_DIRECTION"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public broadcastCommunicationError()V
    .locals 2

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMMUNICATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public broadcastCompleted(JLcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 131
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public broadcastConnected(JLcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public broadcastCshServiceNotReady()V
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "fileSize"    # J

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 216
    return-void
.end method

.method public broadcastInvalidDataPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_FILE_PATH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public broadcastLimitExceeded(JLcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_LIMIT_EXCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public broadcastOutgoingSucceeded(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "filePath"    # Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_CREATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public broadcastProgress(JLcom/sec/ims/util/ImsUri;JJ)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "bytesDone"    # J
    .param p6, "fileSize"    # J

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_DONE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.BYTES_TOTAL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public broadcastServiceNotReady()V
    .locals 2

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public broadcastServiceReady()V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.SHARE_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public broadcastSystemRefresh(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataPath"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 210
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestNewShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    :cond_0
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    .line 228
    :cond_2
    :goto_0
    return-void
.end method
