.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;
.super Ljava/lang/Object;
.source "GroupFileTransferBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IGroupFileTransferBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 49
    return-void
.end method

.method public broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p2, "transferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 110
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v1, "listIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    invoke-interface {v3, p1, v1}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;->onDeleted(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 120
    return-void
.end method

.method public broadcastFileTransferInvitation(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileTransferId"    # Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.NEW_FILE_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "invitation":Landroid/content/Intent;
    const-string/jumbo v1, "transferId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public broadcastGroupDeliveryInfoStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p4, "state"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .param p5, "reasonCode"    # Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 94
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;->onDeliveryInfoChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t notify listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 105
    return-void
.end method

.method public broadcastResumeFileTransfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "filetransferId"    # Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.RESUME_FILE_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "resumeFileTransfer":Landroid/content/Intent;
    const-string/jumbo v1, "transferId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 60
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;->onStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t notify listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 70
    return-void
.end method

.method public broadcastTransferprogress(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J

    .line 75
    move-object v1, p0

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 76
    .local v2, "N":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 78
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-interface/range {v4 .. v10}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;->onProgressUpdate(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "i":I
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 87
    return-void
.end method

.method public removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->mGroupFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 53
    return-void
.end method
