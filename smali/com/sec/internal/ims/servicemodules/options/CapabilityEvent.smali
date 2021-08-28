.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityEvent;
.super Ljava/lang/Object;
.source "CapabilityEvent.java"


# static fields
.field public static final EVT_ATTACH_SERVICE_AVAILABILITY_LISTENER:I = 0x32

.field public static final EVT_BOOT_COMPLETED:I = 0xc

.field public static final EVT_CONTACT_CHANGED:I = 0x2

.field public static final EVT_DDS_CHANGED:I = 0xf

.field public static final EVT_DELAYED_SET_OWN_CAPABILITIES:I = 0x35

.field public static final EVT_DETACH_SERVICE_AVAILABILITY_LISTENER:I = 0x33

.field public static final EVT_EXCHANGE_CAPABILITIES_FOR_VSH:I = 0xe

.field public static final EVT_INITIAL_CAPABILITIES_QUERY:I = 0x3

.field public static final EVT_LAZY_CAPABILITIES_QUERY:I = 0x8

.field public static final EVT_MESSAGEAPP_UPDATED:I = 0x28

.field public static final EVT_NEW_CAPABILITIES_RECEIVED:I = 0x4

.field public static final EVT_NEW_IMS_SETTINGS_AVAILABLE:I = 0x7

.field public static final EVT_OWN_CAPABILITIES_CHANGED:I = 0x9

.field public static final EVT_PERIODIC_POLL_TIMEOUT:I = 0x11

.field public static final EVT_POLL:I = 0x1

.field public static final EVT_REQUEST_CAPABILITIES:I = 0x6

.field public static final EVT_REQUEST_LIST_CAPABILITIES:I = 0x21

.field public static final EVT_RETRY_SYNC_CONTACT:I = 0xd

.field public static final EVT_SEND_RCSC_INFO_TO_HQM:I = 0x10

.field public static final EVT_SET_OWN_CAPABILITIES:I = 0x5

.field public static final EVT_SYNC_CONTACT:I = 0xa

.field public static final EVT_UPDATE_SERVICE_AVAILABILITY_LISTENER:I = 0x34

.field public static final EVT_USER_SWITCHED:I = 0xb

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;I)Z
    .locals 27
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "capabilityDiscovery"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "capabilityUtil"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
    .param p3, "serviceAvailabilityEventListenerWrapper"    # Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;
    .param p4, "availablePhoneId"    # I

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent: evt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityEvent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v15, 0x0

    .line 51
    .local v15, "isAlwaysForce":Z
    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x21

    const/4 v11, 0x1

    if-eq v1, v3, :cond_5

    const/16 v3, 0x28

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1f41

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1f42

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 169
    const-string v1, "handleEvent: Undefined message."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v4

    .line 165
    :pswitch_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->handleDelayedSetOwnCapabilities(I)V

    .line 166
    move/from16 v26, v11

    goto/16 :goto_0

    .line 161
    :pswitch_1
    iget v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->updateServiceAvailabilityEventListener(I)V

    .line 162
    move/from16 v26, v11

    goto/16 :goto_0

    .line 157
    :pswitch_2
    iget v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v1}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->detachServiceAvailabilityEventListener(I)V

    .line 158
    move/from16 v26, v11

    goto/16 :goto_0

    .line 153
    :pswitch_3
    iget v1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->attachServiceAvailabilityEventListener(ILjava/lang/String;)V

    .line 154
    move/from16 v26, v11

    goto/16 :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->deleteNonRcsDataFromContactDB(I)V

    .line 58
    move/from16 v26, v11

    goto/16 :goto_0

    .line 137
    :pswitch_5
    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v10, p2

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->sendRCSCInfoToHQM(I)V

    .line 138
    move/from16 v26, v11

    goto/16 :goto_0

    .line 133
    :pswitch_6
    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->ddsChangedCheckRcsSwitch()V

    .line 134
    move/from16 v26, v11

    goto/16 :goto_0

    .line 129
    :pswitch_7
    move-object/from16 v10, p2

    iget v1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilitiesForVSH(IZ)V

    .line 130
    move/from16 v26, v11

    goto/16 :goto_0

    .line 149
    :pswitch_8
    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onRetrySyncContact()V

    .line 150
    move/from16 v26, v11

    goto/16 :goto_0

    .line 145
    :pswitch_9
    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onBootCompleted()V

    .line 146
    move/from16 v26, v11

    goto/16 :goto_0

    .line 125
    :pswitch_a
    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onUserSwitched()V

    .line 126
    move/from16 v26, v11

    goto/16 :goto_0

    .line 121
    :pswitch_b
    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/Mno;

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->_syncContact(Lcom/sec/internal/constants/Mno;)V

    .line 122
    move/from16 v26, v11

    goto/16 :goto_0

    .line 67
    :pswitch_c
    move-object/from16 v10, p2

    iget v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onOwnCapabilitiesChanged(I)V

    .line 68
    move/from16 v26, v11

    goto/16 :goto_0

    .line 104
    :pswitch_d
    move-object/from16 v10, p2

    iget v1, v0, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVT_LAZY_CAPABILITIES_QUERY: refreshtype = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne v1, v2, :cond_0

    move v4, v11

    :cond_0
    move v15, v4

    .line 106
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v12, v1, v2, v15, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)Z

    .line 108
    move/from16 v26, v11

    goto/16 :goto_0

    .line 98
    :pswitch_e
    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 99
    .local v1, "pId":I
    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadConfig(I)V

    .line 100
    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onImsSettingsUpdate(I)V

    .line 101
    move/from16 v26, v11

    goto/16 :goto_0

    .line 61
    .end local v1    # "pId":I
    :pswitch_f
    move-object/from16 v10, p2

    iget v1, v0, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVT_REQUEST_CAPABILITIES: refreshtype = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne v1, v2, :cond_1

    move v4, v11

    :cond_1
    move v15, v4

    .line 63
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v12, v1, v2, v15, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)Z

    .line 64
    move/from16 v26, v11

    goto/16 :goto_0

    .line 71
    :pswitch_10
    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v11, :cond_2

    move v4, v11

    :cond_2
    invoke-virtual {v12, v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    .line 72
    move/from16 v26, v11

    goto/16 :goto_0

    .line 83
    :pswitch_11
    move-object/from16 v10, p2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/os/Bundle;

    .line 84
    .local v9, "b":Landroid/os/Bundle;
    const-string v1, "URIS"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 85
    .local v16, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const-string v1, "PIDF"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, "pidf":Ljava/lang/String;
    const-string v1, "FEATURES"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 87
    .local v18, "features":J
    const-string v1, "PHONEID"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 88
    .local v20, "phoneId":I
    const-string v1, "LASTSEEN"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 89
    .local v8, "lastSeen":I
    const-string v1, "EXTFEATURE"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "extFeature":Ljava/lang/String;
    const-string v1, "ISTOKENUSED"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 91
    .local v22, "isTokenUsed":Z
    const-string v1, "PAID"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 92
    .local v23, "paidList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent: lastSeen "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->arg1:I

    aget-object v5, v1, v2

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-wide/from16 v3, v18

    move-object/from16 v6, v17

    move v7, v8

    move/from16 v24, v8

    .end local v8    # "lastSeen":I
    .local v24, "lastSeen":I
    move-object/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "b":Landroid/os/Bundle;
    .local v25, "b":Landroid/os/Bundle;
    move/from16 v9, v20

    move/from16 v10, v22

    move/from16 v26, v11

    move-object/from16 v11, v21

    invoke-virtual/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V

    .line 95
    goto :goto_0

    .line 75
    .end local v16    # "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v17    # "pidf":Ljava/lang/String;
    .end local v18    # "features":J
    .end local v20    # "phoneId":I
    .end local v21    # "extFeature":Ljava/lang/String;
    .end local v22    # "isTokenUsed":Z
    .end local v23    # "paidList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v24    # "lastSeen":I
    .end local v25    # "b":Landroid/os/Bundle;
    :pswitch_12
    move/from16 v26, v11

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestInitialCapabilitiesQuery(I)V

    .line 76
    goto :goto_0

    .line 79
    :pswitch_13
    move/from16 v26, v11

    invoke-virtual {v12, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    .line 80
    goto :goto_0

    .line 53
    :pswitch_14
    move/from16 v26, v11

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v12, v1, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->poll(ZI)V

    .line 54
    goto :goto_0

    .line 51
    :cond_3
    move/from16 v26, v11

    .line 118
    goto :goto_0

    .line 141
    :cond_4
    move/from16 v26, v11

    invoke-virtual {v12, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateMsgAppInfo(Z)V

    .line 142
    goto :goto_0

    .line 111
    :cond_5
    move/from16 v26, v11

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I

    .line 112
    nop

    .line 172
    :goto_0
    return v26

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
