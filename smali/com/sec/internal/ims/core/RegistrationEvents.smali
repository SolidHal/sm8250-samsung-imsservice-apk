.class public Lcom/sec/internal/ims/core/RegistrationEvents;
.super Ljava/lang/Object;
.source "RegistrationEvents.java"


# static fields
.field protected static final DATAUSAGE_REACH_TO_LIMIT:I = 0x2c8

.field public static final EVENT_BLOCK_REGISTRATION_HYS_TIMER:I = 0x326

.field public static final EVENT_BLOCK_REGISTRATION_ROAMING_TIMER:I = 0x90

.field public static final EVENT_BOOT_COMPLETED:I = 0x96

.field public static final EVENT_CARRIER_CONFIG_UPDATED:I = 0x198

.field protected static final EVENT_CELL_LOCATION_CHANGED:I = 0x18

.field public static final EVENT_CHATBOT_AGREEMENT_CHANGED:I = 0x38

.field public static final EVENT_CHECK_UNPROCESSED_OMADM_CONFIG:I = 0x197

.field public static final EVENT_CONFIG_UPDATED:I = 0x23

.field public static final EVENT_CONTACT_ACTIVATED:I = 0x329

.field protected static final EVENT_DDS_CHANGED:I = 0x2be

.field public static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x2c2

.field public static final EVENT_DELAYED_DEREGISTER:I = 0x80

.field public static final EVENT_DELAYED_DEREGISTERINTERNAL:I = 0x91

.field public static final EVENT_DELAYED_STOP_PDN:I = 0x85

.field public static final EVENT_DEREGISTERED:I = 0x65

.field public static final EVENT_DEREGISTER_BY_PENDED_DEFAULT_NET_CHANGED:I = 0x12

.field public static final EVENT_DEREGISTER_FOR_DCN:I = 0x327

.field public static final EVENT_DEREGISTER_TIMEOUT:I = 0x6b

.field public static final EVENT_DEREGISTRATION_REQUESTED:I = 0x78

.field public static final EVENT_DISCONNECT_PDN_BY_HD_VOICE_ROAMING_OFF:I = 0x196

.field public static final EVENT_DISCONNECT_PDN_BY_TIMEOUT:I = 0x194

.field public static final EVENT_DM_CONFIG_COMPLETE:I = 0x1d

.field public static final EVENT_DM_CONFIG_TIMEOUT:I = 0x2b

.field public static final EVENT_DNS_RESPONSE:I = 0x39

.field public static final EVENT_DO_PENDING_UPDATE_REGISTRATION:I = 0x20

.field public static final EVENT_DO_RECOVERY_ACTION:I = 0x86

.field public static final EVENT_DSAC_MODE_CHANGED:I = 0x92

.field public static final EVENT_DYNAMIC_CONFIG_UPDATED:I = 0x95

.field public static final EVENT_EMERGENCY_READY:I = 0x77

.field protected static final EVENT_EPDG_CONNECTED:I = 0x1a

.field public static final EVENT_EPDG_DEREGISTER_REQUESTED:I = 0x7c

.field public static final EVENT_EPDG_DISCONNECTED:I = 0x1b

.field public static final EVENT_EPDG_EVENT_TIMEOUT:I = 0x87

.field protected static final EVENT_EPDG_IKEERROR:I = 0x34

.field protected static final EVENT_EPDG_IPSECDISCONNECTED:I = 0x36

.field public static final EVENT_EPDG_VOICE_PREFERENCE_CHANGED:I = 0x7b

.field public static final EVENT_FINISH_OMADM_PROVISIONING_UPDATE:I = 0x27

.field public static final EVENT_FLIGHT_MODE_CHANGED:I = 0xc

.field public static final EVENT_FORCED_UPDATE_REGISTRATION_REQUESTED:I = 0x8c

.field public static final EVENT_FORCE_SMS_PUSH:I = 0x8f

.field public static final EVENT_GEO_LOCATION_UPDATED:I = 0x28

.field public static final EVENT_GLOBAL_SETTINGS_UPDATED:I = 0x10

.field public static final EVENT_HANDOFF_EVENT_TIMEOUT:I = 0x88

.field public static final EVENT_IMS_PROFILE_UPDATED:I = 0xf

.field public static final EVENT_IMS_SWITCH_UPDATED:I = 0x11

.field public static final EVENT_LOCAL_IP_CHANGED:I = 0x5

.field public static final EVENT_LOCATION_CACHE_EXPIRY:I = 0x323

.field public static final EVENT_LOCATION_TIMEOUT:I = 0x320

.field public static final EVENT_LTE_DATA_NETWORK_MODE_CHAGED:I = 0x8b

.field public static final EVENT_MANUAL_DEREGISTER:I = 0xa

.field public static final EVENT_MANUAL_REGISTER:I = 0x9

.field public static final EVENT_MNOMAP_UPDATED:I = 0x94

.field public static final EVENT_MOBILE_DATA_CHANGED:I = 0x22

.field public static final EVENT_MOBILE_DATA_PRESSED_CHANGED:I = 0x99

.field public static final EVENT_NETWORK_EVENT_CHANGED:I = 0x2bd

.field public static final EVENT_NETWORK_MODE_CHANGE_TIMEOUT:I = 0x31

.field public static final EVENT_NETWORK_SUSPENDED:I = 0x97

.field public static final EVENT_NETWORK_TYPE:I = 0x3

.field public static final EVENT_OWN_CAPABILITIES_CHANGED:I = 0x1f

.field public static final EVENT_PCO_INFO:I = 0x2bf

.field public static final EVENT_PDN_CONNECTED:I = 0x16

.field public static final EVENT_PDN_DISCONNECTED:I = 0x17

.field protected static final EVENT_PDN_FAILED:I = 0x81

.field public static final EVENT_RCS_ALLOWED_CHANGED:I = 0x35

.field public static final EVENT_RCS_DELAYED_DEREGISTER:I = 0x8e

.field public static final EVENT_RCS_USER_SETTING_CHANGED:I = 0x93

.field public static final EVENT_REFRESH_REGISTRATION:I = 0x8d

.field public static final EVENT_REGEVENT_CONTACT_URI_NOTIFIED:I = 0x32a

.field public static final EVENT_REGISTERED:I = 0x64

.field public static final EVENT_REGISTER_ERROR:I = 0x68

.field public static final EVENT_REQUEST_DM_CONFIG:I = 0x1c

.field public static final EVENT_REQUEST_LOCATION:I = 0x321

.field public static final EVENT_REQUEST_NOTIFY_VOLTE_SETTINGS_OFF:I = 0x83

.field public static final EVENT_REQUEST_X509_CERT_VERIFY:I = 0x1e

.field public static final EVENT_ROAMING_DATA_CHANGED:I = 0x2c

.field public static final EVENT_ROAMING_LTE_CHANGED:I = 0x32

.field public static final EVENT_ROAMING_SETTINGS_CHANGED:I = 0x2e

.field public static final EVENT_RTTMODE_UPDATED:I = 0x2c1

.field public static final EVENT_SETUP_WIZARD_COMPLETED:I = 0x32b

.field public static final EVENT_SET_THIRDPARTY_FEATURE_TAGS:I = 0x7e

.field public static final EVENT_SHUTDOWN:I = 0x82

.field public static final EVENT_SIM_READY:I = 0x14

.field public static final EVENT_SIM_REFRESH:I = 0x24

.field public static final EVENT_SIM_REFRESH_TIMEOUT:I = 0x2a

.field protected static final EVENT_SIM_SUBSCRIBE_ID_CHANGED:I = 0x2c3

.field public static final EVENT_SSAC_REREGISTER:I = 0x79

.field public static final EVENT_START_GEO_LOCATION_UPDATE:I = 0x33

.field public static final EVENT_START_OMADM_PROVISIONING_UPDATE:I = 0x26

.field public static final EVENT_SUBSCRIBE_ERROR:I = 0x6c

.field public static final EVENT_TELEPHONY_CALL_STATUS_CHANGED:I = 0x21

.field public static final EVENT_TIMS_ESTABLISHMENT_TIMEOUT:I = 0x84

.field public static final EVENT_TIMS_ESTABLISHMENT_TIMEOUT_RCS:I = 0x98

.field public static final EVENT_TRY_EMERGENCY_REGISTER:I = 0x76

.field public static final EVENT_TRY_REGISTER:I = 0x2

.field public static final EVENT_TRY_REGISTER_TIMER:I = 0x4

.field public static final EVENT_TTYMODE_UPDATED:I = 0x25

.field protected static final EVENT_UICC_CHANGED:I = 0x15

.field public static final EVENT_UPDATE_CHAT_SERVICE:I = 0x89

.field public static final EVENT_UPDATE_REGISTRATION:I = 0x19

.field public static final EVENT_USER_SWITCHED:I = 0x3e8

.field public static final EVENT_VIDEO_SETTING_CHANGED:I = 0x7f

.field public static final EVENT_VOLTE_ROAMING_SETTING_CHANGED:I = 0x8a

.field public static final EVENT_VOLTE_SETTING_CHANGED:I = 0x7d

.field public static final EVENT_VOWIFI_SETTING_CHANGED:I = 0x7a

.field public static final EVENT_WFC_SWITCH_PROFILE:I = 0x2c0

.field private static final msgToStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    .line 138
    const-class v0, Lcom/sec/internal/ims/core/RegistrationEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$M5gCxB0Gq43JjzJXJ3zGNQv-IwU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$M5gCxB0Gq43JjzJXJ3zGNQv-IwU;

    .line 139
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$XQRhlIuebyxD9BrsaAiuVmp8nN4;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$XQRhlIuebyxD9BrsaAiuVmp8nN4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;

    .line 140
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$uR91a-QPKD7r1pBmunfEU5SH1Ok;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$uR91a-QPKD7r1pBmunfEU5SH1Ok;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;)Z
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "regHandler"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .param p2, "regMgr"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .param p3, "netEvtCtrl"    # Lcom/sec/internal/ims/core/NetworkEventController;
    .param p4, "userEvtCtrl"    # Lcom/sec/internal/ims/core/UserEventController;

    .line 160
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    const-string/jumbo v3, "phoneId"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/16 v1, 0x9

    if-eq v0, v1, :cond_14

    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    const/16 v1, 0x38

    if-eq v0, v1, :cond_12

    const/16 v1, 0x39

    if-eq v0, v1, :cond_11

    const/16 v1, 0x64

    if-eq v0, v1, :cond_10

    const/16 v1, 0x65

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_e

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_d

    const-string v1, "mode"

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 603
    return v4

    .line 323
    :pswitch_0
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 324
    .local v0, "phoneId":I
    iget v1, p0, Landroid/os/Message;->arg2:I

    .line 325
    .local v1, "failCause":I
    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->valueOf(I)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "reason":Ljava/lang/String;
    invoke-virtual {p3, v0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnFailed(ILjava/lang/String;)V

    .line 327
    goto/16 :goto_1

    .line 482
    .end local v0    # "phoneId":I
    .end local v1    # "failCause":I
    .end local v3    # "reason":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 483
    goto/16 :goto_1

    .line 379
    :pswitch_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v0, v1}, Lcom/sec/internal/ims/core/UserEventController;->onVideoCallServiceSettingChanged(ZI)V

    .line 380
    goto/16 :goto_1

    .line 474
    :pswitch_3
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onThirdParyFeatureTagsUpdated(I)V

    .line 475
    goto/16 :goto_1

    .line 371
    :pswitch_4
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v0, v1}, Lcom/sec/internal/ims/core/UserEventController;->onVolteServiceSettingChanged(ZI)V

    .line 372
    goto/16 :goto_1

    .line 283
    :pswitch_5
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgDeregisterRequested(I)V

    .line 284
    goto/16 :goto_1

    .line 287
    :pswitch_6
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 288
    .restart local v0    # "phoneId":I
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_0

    move v4, v2

    :cond_0
    move v1, v4

    .line 289
    .local v1, "cdmaAvailability":Z
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isCdmaAvailableForVoice(I)Z

    move-result v3

    if-eq v3, v1, :cond_1a

    .line 290
    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setCdmaAvailableForVoice(IZ)V

    .line 291
    iget v3, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->onVoicePreferredChanged(I)V

    goto/16 :goto_1

    .line 367
    .end local v0    # "phoneId":I
    .end local v1    # "cdmaAvailability":Z
    :pswitch_7
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v0, p1}, Lcom/sec/internal/ims/core/UserEventController;->onVowifiServiceSettingChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    .line 368
    goto/16 :goto_1

    .line 462
    :pswitch_8
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_1

    move v4, v2

    :cond_1
    invoke-virtual {p1, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSSACRegiRequested(IZ)V

    .line 463
    goto/16 :goto_1

    .line 210
    :pswitch_9
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget v3, p0, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_3

    move v4, v2

    :cond_3
    invoke-virtual {p1, v0, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregistrationRequest(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V

    .line 211
    goto/16 :goto_1

    .line 222
    :pswitch_a
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onEmergencyReady(I)V

    .line 223
    goto/16 :goto_1

    .line 218
    :pswitch_b
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 219
    goto/16 :goto_1

    .line 300
    :pswitch_c
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onIpsecDisconnected(I)V

    .line 301
    goto/16 :goto_1

    .line 555
    :pswitch_d
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRCSAllowedChangedbyMDM()V

    .line 556
    goto/16 :goto_1

    .line 296
    :pswitch_e
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgIkeError(I)V

    .line 297
    goto/16 :goto_1

    .line 547
    :pswitch_f
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    .line 548
    goto/16 :goto_1

    .line 359
    :pswitch_10
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingLteChanged(Z)V

    .line 360
    goto/16 :goto_1

    .line 543
    :pswitch_11
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    .line 544
    goto/16 :goto_1

    .line 351
    :pswitch_12
    iget v0, p0, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    move v4, v2

    :cond_5
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, v0}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingDataChanged(ZI)V

    .line 352
    goto/16 :goto_1

    .line 458
    :pswitch_13
    const/16 v0, 0x2a

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 459
    goto/16 :goto_1

    .line 597
    :pswitch_14
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 598
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p3, v0, v1, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 599
    iget-object v1, p2, Lcom/sec/internal/ims/core/RegistrationManagerBase;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 600
    goto/16 :goto_1

    .line 409
    .end local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :pswitch_15
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsSwitchUpdated(I)V

    .line 410
    goto/16 :goto_1

    .line 405
    :pswitch_16
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleGlobalSettingsUpdated(I)V

    .line 406
    goto/16 :goto_1

    .line 339
    :pswitch_17
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsProfileUpdated(I)V

    .line 340
    goto/16 :goto_1

    .line 393
    :sswitch_0
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/UserEventController;->onUserSwitched()V

    .line 394
    goto/16 :goto_1

    .line 189
    :sswitch_1
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegEventContactUriNotified(Ljava/lang/Object;)V

    .line 190
    goto/16 :goto_1

    .line 184
    :sswitch_2
    iget v0, p0, Landroid/os/Message;->arg2:I

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 186
    goto/16 :goto_1

    .line 589
    :sswitch_3
    const/16 v0, 0x327

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 590
    goto/16 :goto_1

    .line 539
    :sswitch_4
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onLocationCacheExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 540
    goto/16 :goto_1

    .line 530
    :sswitch_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRequestLocation()V

    .line 531
    goto/16 :goto_1

    .line 526
    :sswitch_6
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onLocationTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 527
    goto/16 :goto_1

    .line 490
    :sswitch_7
    iget v0, p0, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_6

    move v4, v2

    :cond_6
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, v0}, Lcom/sec/internal/ims/core/UserEventController;->onDataUsageLimitReached(ZI)V

    .line 491
    goto/16 :goto_1

    .line 534
    :sswitch_8
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 535
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    .line 536
    goto/16 :goto_1

    .line 259
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :sswitch_9
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onDefaultNetworkStateChanged(I)V

    .line 260
    goto/16 :goto_1

    .line 388
    :sswitch_a
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 389
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p4, v3, v1}, Lcom/sec/internal/ims/core/UserEventController;->onRTTmodeUpdated(IZ)V

    .line 390
    goto/16 :goto_1

    .line 522
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_b
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onWfcSwitchProfile([BI)V

    .line 523
    goto/16 :goto_1

    .line 518
    :sswitch_c
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Landroid/os/Message;->arg1:I

    iget v3, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onPcoInfo(Ljava/lang/String;II)V

    .line 519
    goto/16 :goto_1

    .line 478
    :sswitch_d
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDefaultDataSubscriptionChanged()V

    .line 479
    goto/16 :goto_1

    .line 255
    :sswitch_e
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0, v1}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 256
    goto/16 :goto_1

    .line 319
    :sswitch_f
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/NetworkEventController;->onCheckUnprocessedOmadmConfig()V

    .line 320
    goto/16 :goto_1

    .line 470
    :sswitch_10
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisconnectPdnByHDvoiceRoamingOff(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 471
    goto/16 :goto_1

    .line 466
    :sswitch_11
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisconnectPdnByTimeout(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 467
    goto/16 :goto_1

    .line 347
    :sswitch_12
    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v0, v1, p3}, Lcom/sec/internal/ims/core/UserEventController;->onMobileDataPressedChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V

    .line 348
    goto/16 :goto_1

    .line 593
    :sswitch_13
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_7

    move v4, v2

    :cond_7
    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    .line 594
    goto/16 :goto_1

    .line 571
    :sswitch_14
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onBootCompleted()V

    .line 572
    goto/16 :goto_1

    .line 435
    :sswitch_15
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleDynamicConfigUpdated(I)V

    .line 436
    goto/16 :goto_1

    .line 430
    :sswitch_16
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleMnoMapUpdated(I)V

    .line 431
    goto/16 :goto_1

    .line 375
    :sswitch_17
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v0, v1}, Lcom/sec/internal/ims/core/UserEventController;->onRcsUserSettingChanged(II)V

    .line 376
    goto/16 :goto_1

    .line 567
    :sswitch_18
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDsacModeChanged()V

    .line 568
    goto/16 :goto_1

    .line 563
    :sswitch_19
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    iget v1, p0, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_8

    move v4, v2

    :cond_8
    invoke-virtual {p1, v0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDelayedDeregisterInternal(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 564
    goto/16 :goto_1

    .line 559
    :sswitch_1a
    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onBlockRegistrationRoamingTimer(II)V

    .line 560
    goto/16 :goto_1

    .line 551
    :sswitch_1b
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRcsDelayedDeregister()V

    .line 552
    goto/16 :goto_1

    .line 193
    :sswitch_1c
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 194
    .local v0, "handle":I
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    .line 195
    .local v1, "task":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v1, :cond_1a

    .line 196
    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onRefreshRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    goto/16 :goto_1

    .line 514
    .end local v0    # "handle":I
    .end local v1    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :sswitch_1d
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onForcedUpdateRegistrationRequested(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 515
    goto/16 :goto_1

    .line 401
    :sswitch_1e
    iget v0, p0, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_9

    move v4, v2

    :cond_9
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, v0}, Lcom/sec/internal/ims/core/UserEventController;->onLteDataNetworkModeSettingChanged(ZI)V

    .line 402
    goto/16 :goto_1

    .line 397
    :sswitch_1f
    iget v0, p0, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_a

    move v4, v2

    :cond_a
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, v0}, Lcom/sec/internal/ims/core/UserEventController;->onVolteRoamingServiceSettingChanged(ZI)V

    .line 398
    goto/16 :goto_1

    .line 510
    :sswitch_20
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->enableIpme(I)V

    .line 511
    goto/16 :goto_1

    .line 330
    :sswitch_21
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->handOffEventTimeout(I)V

    .line 331
    goto/16 :goto_1

    .line 275
    :sswitch_22
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 276
    .local v0, "tempTask":Lcom/sec/internal/ims/core/RegisterTask;
    if-eqz v0, :cond_1a

    .line 277
    const-string v1, "ePDG timeout"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto/16 :goto_1

    .line 214
    .end local v0    # "tempTask":Lcom/sec/internal/ims/core/RegisterTask;
    :sswitch_23
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->doRecoveryAction(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 215
    goto/16 :goto_1

    .line 504
    :sswitch_24
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 505
    .local v0, "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleDelayedStopPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 506
    goto/16 :goto_1

    .line 500
    .end local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :sswitch_25
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onTimsTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 501
    goto/16 :goto_1

    .line 494
    :sswitch_26
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRequestNotifyVolteSettingsOff(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 495
    goto/16 :goto_1

    .line 176
    :sswitch_27
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegisterError(Ljava/lang/Object;)V

    .line 177
    goto/16 :goto_1

    .line 355
    :sswitch_28
    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v0, v1}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingSettingsChanged(II)V

    .line 356
    goto/16 :goto_1

    .line 486
    :sswitch_29
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onGeoLocationUpdated()V

    .line 487
    goto/16 :goto_1

    .line 448
    :sswitch_2a
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 449
    .restart local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->finishOmadmProvisioningUpdate()V

    .line 450
    goto/16 :goto_1

    .line 443
    .end local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :sswitch_2b
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 444
    .restart local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startOmadmProvisioningUpdate()V

    .line 445
    goto/16 :goto_1

    .line 383
    .end local v0    # "task":Lcom/sec/internal/ims/core/RegisterTask;
    :sswitch_2c
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 384
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p4, v3, v1}, Lcom/sec/internal/ims/core/UserEventController;->onTTYmodeUpdated(IZ)V

    .line 385
    goto/16 :goto_1

    .line 453
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_2d
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 454
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSimRefresh(I)V

    .line 455
    goto/16 :goto_1

    .line 439
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :sswitch_2e
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onConfigUpdated(Ljava/lang/String;I)V

    .line 440
    goto/16 :goto_1

    .line 343
    :sswitch_2f
    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v0, v1, p3}, Lcom/sec/internal/ims/core/UserEventController;->onMobileDataChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V

    .line 344
    goto/16 :goto_1

    .line 413
    :sswitch_30
    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onTelephonyCallStatusChanged(II)V

    .line 414
    goto/16 :goto_1

    .line 422
    :sswitch_31
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onPendingUpdateRegistration()V

    .line 423
    goto/16 :goto_1

    .line 417
    :sswitch_32
    iget v0, p0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onOwnCapabilitiesChanged(ILcom/sec/ims/options/Capabilities;)V

    .line 418
    goto/16 :goto_1

    .line 579
    :sswitch_33
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->verifyX509Certificate([Ljava/security/cert/X509Certificate;)V

    .line 580
    goto/16 :goto_1

    .line 315
    :pswitch_18
    :sswitch_34
    iget v0, p0, Landroid/os/Message;->what:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_b

    move v4, v2

    :cond_b
    invoke-virtual {p3, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->onDmConfigCompleted(Z)V

    .line 316
    goto/16 :goto_1

    .line 309
    :sswitch_35
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 310
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig()V

    .line 311
    goto/16 :goto_1

    .line 271
    :sswitch_36
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgDisconnected(I)V

    .line 272
    goto/16 :goto_1

    .line 267
    :sswitch_37
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgConnected(I)V

    .line 268
    goto/16 :goto_1

    .line 226
    :sswitch_38
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)V

    .line 227
    goto/16 :goto_1

    .line 304
    :sswitch_39
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 305
    .local v0, "phoneId":I
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onCellLocationChanged(I)V

    .line 306
    goto/16 :goto_1

    .line 246
    .end local v0    # "phoneId":I
    :sswitch_3a
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 247
    goto/16 :goto_1

    .line 242
    :sswitch_3b
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 243
    goto/16 :goto_1

    .line 334
    :sswitch_3c
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 335
    .local v0, "res":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleUiccChanged(I)V

    .line 336
    goto/16 :goto_1

    .line 162
    .end local v0    # "res":Lcom/sec/internal/helper/AsyncResult;
    :sswitch_3d
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 163
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, "phoneId":I
    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleSimReady(ILcom/sec/internal/helper/AsyncResult;)V

    .line 165
    goto/16 :goto_1

    .line 426
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "phoneId":I
    :sswitch_3e
    iget v0, p0, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_c

    move v4, v2

    :cond_c
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onFlightModeChanged(Z)V

    .line 427
    goto/16 :goto_1

    .line 180
    :cond_d
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSubscribeError(Ljava/lang/Object;)V

    .line 181
    goto/16 :goto_1

    .line 575
    :cond_e
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 576
    goto/16 :goto_1

    .line 172
    :cond_f
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregistered(Ljava/lang/Object;)V

    .line 173
    goto/16 :goto_1

    .line 168
    :cond_10
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegistered(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 169
    goto/16 :goto_1

    .line 584
    :cond_11
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget v1, p0, Landroid/os/Message;->arg1:I

    iget v3, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p2, v0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDnsResponse(Ljava/util/List;II)V

    .line 585
    goto :goto_1

    .line 363
    :cond_12
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/core/UserEventController;->onChatbotAgreementChanged(I)V

    .line 364
    goto :goto_1

    .line 234
    :cond_13
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 235
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "id":I
    const-string v4, "explicitDeregi"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 237
    .local v4, "explicitDeregi":Z
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, "phoneId":I
    invoke-virtual {p2, v1, v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onManualDeregister(IZI)V

    .line 239
    goto :goto_1

    .line 230
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "id":I
    .end local v3    # "phoneId":I
    .end local v4    # "explicitDeregi":Z
    :cond_14
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onManualRegister(Lcom/sec/ims/settings/ImsProfile;I)V

    .line 231
    goto :goto_1

    .line 263
    :cond_15
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 264
    goto :goto_1

    .line 201
    :cond_16
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 202
    goto :goto_1

    .line 250
    :cond_17
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 251
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "networkType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "isWifiConnected"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_18

    move v4, v2

    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v1, v4, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkChanged(IZI)V

    .line 252
    goto :goto_1

    .line 206
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_19
    :sswitch_3f
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister(I)V

    .line 207
    nop

    .line 606
    :cond_1a
    :goto_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_3e
        0x14 -> :sswitch_3d
        0x15 -> :sswitch_3c
        0x16 -> :sswitch_3b
        0x17 -> :sswitch_3a
        0x18 -> :sswitch_39
        0x19 -> :sswitch_38
        0x1a -> :sswitch_37
        0x1b -> :sswitch_36
        0x1c -> :sswitch_35
        0x1d -> :sswitch_34
        0x1e -> :sswitch_33
        0x1f -> :sswitch_32
        0x20 -> :sswitch_31
        0x21 -> :sswitch_30
        0x22 -> :sswitch_2f
        0x23 -> :sswitch_2e
        0x24 -> :sswitch_2d
        0x25 -> :sswitch_2c
        0x26 -> :sswitch_2b
        0x27 -> :sswitch_2a
        0x28 -> :sswitch_29
        0x2e -> :sswitch_28
        0x68 -> :sswitch_27
        0x83 -> :sswitch_26
        0x84 -> :sswitch_25
        0x85 -> :sswitch_24
        0x86 -> :sswitch_23
        0x87 -> :sswitch_22
        0x88 -> :sswitch_21
        0x89 -> :sswitch_20
        0x8a -> :sswitch_1f
        0x8b -> :sswitch_1e
        0x8c -> :sswitch_1d
        0x8d -> :sswitch_1c
        0x8e -> :sswitch_1b
        0x90 -> :sswitch_1a
        0x91 -> :sswitch_19
        0x92 -> :sswitch_18
        0x93 -> :sswitch_17
        0x94 -> :sswitch_16
        0x95 -> :sswitch_15
        0x96 -> :sswitch_14
        0x97 -> :sswitch_13
        0x98 -> :sswitch_25
        0x99 -> :sswitch_12
        0x194 -> :sswitch_11
        0x196 -> :sswitch_10
        0x197 -> :sswitch_f
        0x198 -> :sswitch_15
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_d
        0x2bf -> :sswitch_c
        0x2c0 -> :sswitch_b
        0x2c1 -> :sswitch_a
        0x2c2 -> :sswitch_9
        0x2c3 -> :sswitch_8
        0x2c8 -> :sswitch_7
        0x320 -> :sswitch_6
        0x321 -> :sswitch_5
        0x323 -> :sswitch_4
        0x327 -> :sswitch_3
        0x329 -> :sswitch_2
        0x32a -> :sswitch_1
        0x32b -> :sswitch_3f
        0x3e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_13
        :pswitch_18
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
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

.method static synthetic lambda$handleEvent$4(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1
    .param p0, "t"    # Lcom/sec/internal/ims/core/RegisterTask;

    .line 185
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onContactActivated()V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 139
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$1(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 139
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$2(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 140
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$3(Ljava/lang/reflect/Field;)V
    .locals 3
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 142
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 146
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void
.end method

.method public static msgToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # I

    .line 150
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
