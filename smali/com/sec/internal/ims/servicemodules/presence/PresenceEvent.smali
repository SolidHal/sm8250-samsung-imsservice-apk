.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;
.super Ljava/lang/Object;
.source "PresenceEvent.java"


# static fields
.field static final EVT_BAD_EVENT_TIMEOUT:I = 0xe

.field static final EVT_NEW_PRESENCE_INFO:I = 0xa

.field static final EVT_NEW_PRESENCE_INFO_DELAYED:I = 0xb

.field static final EVT_NEW_WATCHER_INFO:I = 0xc

.field static final EVT_PERIODIC_PUBLISH:I = 0x4

.field static final EVT_PUBLISH_COMPLETE:I = 0x2

.field public static final EVT_PUBLISH_REQUEST:I = 0x1

.field static final EVT_SUBSCRIBE_COMPLETE:I = 0x6

.field static final EVT_SUBSCRIBE_LIST_REQUESTED:I = 0x7

.field static final EVT_SUBSCRIBE_REQUESTED:I = 0x5

.field static final EVT_SUBSCRIBE_RETRY:I = 0x8

.field static final EVT_SUBSCRIPTION_TERMINATED:I = 0x9

.field static final EVT_UNPUBLISH_REQUEST:I = 0x3

.field static final EVT_WAKE_LOCK_TIMEOUT:I = 0xd

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "presenceModule"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
    .param p2, "phoneId"    # I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v0, p0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 91
    :pswitch_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 92
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onBadEventTimeout(I)V

    .line 93
    goto/16 :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 103
    goto/16 :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 82
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewWatcherInformation(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 83
    goto/16 :goto_0

    .line 96
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_3
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/presence/PresenceInfo;

    .line 97
    .local v0, "info":Lcom/sec/ims/presence/PresenceInfo;
    iget p2, p0, Landroid/os/Message;->arg1:I

    .line 98
    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 99
    goto/16 :goto_0

    .line 75
    .end local v0    # "info":Lcom/sec/ims/presence/PresenceInfo;
    :pswitch_4
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 76
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/presence/PresenceInfo;

    .line 77
    .local v1, "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 78
    goto :goto_0

    .line 106
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    :pswitch_5
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 107
    goto :goto_0

    .line 58
    :pswitch_6
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 59
    goto :goto_0

    .line 52
    :pswitch_7
    iget p2, p0, Landroid/os/Message;->arg1:I

    .line 53
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)V

    .line 54
    goto :goto_0

    .line 62
    :pswitch_8
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 63
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    .line 64
    goto :goto_0

    .line 48
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_9
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V

    .line 49
    goto :goto_0

    .line 43
    :pswitch_a
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPeriodicPublish(I)V

    .line 45
    goto :goto_0

    .line 86
    :pswitch_b
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 87
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    .line 88
    goto :goto_0

    .line 67
    :pswitch_c
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 68
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 69
    .local v1, "presenceResponse":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p2

    .line 70
    invoke-virtual {p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V

    .line 71
    goto :goto_0

    .line 38
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "presenceResponse":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    :pswitch_d
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 40
    nop

    .line 112
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
