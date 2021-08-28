.class public final Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;
.super Ljava/lang/Object;
.source "ImdnNotificationEvent.java"


# instance fields
.field public final mCpimDate:Ljava/util/Date;

.field public final mImdnDate:Ljava/util/Date;

.field public final mImdnId:Ljava/lang/String;

.field public mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field public final mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/util/Date;)V
    .locals 0
    .param p1, "imdnId"    # Ljava/lang/String;
    .param p2, "imdnDate"    # Ljava/util/Date;
    .param p3, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p5, "cpimDate"    # Ljava/util/Date;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnDate:Ljava/util/Date;

    .line 30
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 31
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 32
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImdnNotificationEvent [mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mImdnDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 39
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCpimDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    return-object v0
.end method
