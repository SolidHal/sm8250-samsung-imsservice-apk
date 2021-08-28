.class public Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
.super Ljava/lang/Object;
.source "VshTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    .line 43
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vshServiceModule"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 53
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestNewShare(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestToggleCamera(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 33
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestChangeSurfaceOrientation(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 295
    return-void
.end method

.method private requestAcceptShare(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAcceptShare: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 100
    .local v1, "sharedId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->acceptShare(J)V

    .line 101
    return-void
.end method

.method private requestCancelShare(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCancelShare: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 113
    .local v1, "sharedId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->cancelShare(J)V

    .line 115
    return-void
.end method

.method private requestChangeSurfaceOrientation(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestChangeSurfaceOrientation: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 136
    .local v1, "sharedId":J
    const-string v3, "com.sec.rcs.mediatransfer.csh.extra.SURFACE_ORIENTATION"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 138
    .local v3, "orientation":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->changeSurfaceOrientation(JI)V

    .line 140
    return-void
.end method

.method private requestNewShare(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNewShare: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 87
    .local v1, "contactUri":Landroid/net/Uri;
    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    const-string v3, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "videoPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 90
    return-void
.end method

.method private requestToggleCamera(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestToggleCamera: extras "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 125
    .local v1, "sharedId":J
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->toggleCamera(J)V

    .line 127
    return-void
.end method


# virtual methods
.method public broadcastApproachingVsMaxDuration(JI)V
    .locals 2
    .param p1, "sharedId"    # J
    .param p3, "remainingTime"    # I

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.APPROCHING_VS_MAX_DURATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 281
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.REMAINING_TIME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "shareDirection"    # I
    .param p5, "notificationReason"    # I

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_DIRECTION"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public broadcastCommunicationError()V
    .locals 2

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_LCOMMUNICATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public broadcastConnected(JLcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public broadcastCshCamError()V
    .locals 2

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_CAM_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method public broadcastCshServiceNotReady()V
    .locals 2

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedId"    # J
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "filePath"    # Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public broadcastServiceNotReady()V
    .locals 2

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method public broadcastServiceReady()V
    .locals 2

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestNewShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 305
    :cond_0
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 307
    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_2
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestToggleCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    :cond_3
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestChangeSurfaceOrientation(Landroid/content/Intent;)V

    .line 315
    :cond_4
    :goto_0
    return-void
.end method
