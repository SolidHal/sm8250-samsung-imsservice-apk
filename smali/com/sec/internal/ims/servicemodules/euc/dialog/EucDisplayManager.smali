.class public Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;
    }
.end annotation


# static fields
.field private static final EUC_KEY:Ljava/lang/String; = "euc_key"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SHOW_EUC_DIALOG:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.euc.dialog.action.SHOW_EUC_DIALOG"

.field private static final START_NOT_CALLED_EXCEPTION_MESSAGE:Ljava/lang/String; = "start was not called!"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mEucNotificationReceiver:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mStartCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceModuleHandler"    # Landroid/os/Handler;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mDialogs:Ljava/util/HashMap;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 124
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mEucNotificationReceiver:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    .line 126
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->showEucNotification(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    return-void
.end method

.method private showEucNotification(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "key"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 399
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showEucNotification: title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", getEucId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.internal.ims.servicemodules.euc.dialog.action.SHOW_EUC_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->marshall()[B

    move-result-object v2

    const-string v3, "euc_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 409
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 411
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "channelId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v5, Landroid/app/NotificationChannel;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 416
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    .local v4, "mBuilder":Landroid/app/Notification$Builder;
    const v5, 0x7f010001

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 419
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 420
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 421
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 422
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 423
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 424
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 426
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 428
    .local v0, "eucNotify":Landroid/app/Notification;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 429
    return-void
.end method


# virtual methods
.method public display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V
    .locals 2
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    const-string/jumbo v1, "start was not called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method public hide(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    .locals 3
    .param p1, "eucMessageKey"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: getEucId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: eucMessageKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    const-string/jumbo v1, "start was not called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public hideAllForOwnIdentity(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "hideAllForOwnIdentity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideAllForOwnIdentity: ownIdentity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    const-string/jumbo v1, "start was not called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public hideAllForType(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V
    .locals 3
    .param p1, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideAllForType: type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    const-string/jumbo v1, "start was not called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$3;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "start was already called!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 133
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "eucIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.internal.ims.servicemodules.euc.dialog.action.SHOW_EUC_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mEucNotificationReceiver:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    const-string/jumbo v1, "stop was already called!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mStartCalled:Z

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->mEucNotificationReceiver:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method
