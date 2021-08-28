.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;
.super Ljava/lang/Object;
.source "OneToOneFileTransferBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IOneToOneFileTransferBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 48
    return-void
.end method

.method public broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p2, "transferIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastDeleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    .local v1, "listIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 97
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 99
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    invoke-interface {v4, v0, v1}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_1

    .line 100
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 102
    sget-object v5, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t notify listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 106
    return-void
.end method

.method public broadcastFileTransferInvitation(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileTransferId"    # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastFileTransferInvitation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.NEW_FILE_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "invitation":Landroid/content/Intent;
    const-string/jumbo v1, "transferId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public broadcastResumeFileTransfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "filetransferId"    # Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastResumeFileTransfer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.RESUME_FILE_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "resumeFileTransfer":Landroid/content/Intent;
    const-string/jumbo v1, "transferId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    .locals 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 58
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastMessageStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

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
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 67
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

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

    .line 70
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 71
    return-void
.end method

.method public broadcastTransferprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "transferId"    # Ljava/lang/String;
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J

    .line 76
    move-object v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : broadcastTransferprogress()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 78
    .local v2, "N":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 80
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-interface/range {v4 .. v10}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "i":I
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 89
    return-void
.end method

.method public broadcastUndeliveredFileTransfer(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 2
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;

    .line 125
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : broadcastResumeFileTransfer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.filetransfer.action.UNDELIVERED_FILE_TRANSFERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "undeliveredFileTransfer":Landroid/content/Intent;
    const-string v1, "contact"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->mOneToOneFileTransferListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 52
    return-void
.end method
