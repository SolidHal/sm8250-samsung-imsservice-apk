.class public Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;
.super Ljava/lang/Object;
.source "DialogAdapterConsentDecorator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

.field private final mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V
    .locals 1
    .param p1, "dialogAdapter"    # Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;
    .param p2, "phoneId"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    .line 38
    iput p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mPhoneId:I

    .line 39
    return-void
.end method

.method private getOwnIdentity()Ljava/lang/String;
    .locals 2

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "ownIdentity":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 99
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->cleanup()V

    .line 109
    return-void
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accept"    # Ljava/lang/String;
    .param p4, "reject"    # Ljava/lang/String;

    .line 43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface {v1, v9, v10, v11, v12}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 45
    .local v1, "userAccept":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->getOwnIdentity()Ljava/lang/String;

    move-result-object v13

    .line 46
    .local v13, "ownIdentity":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 47
    const-class v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 47
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object v15

    .line 49
    .local v15, "moduleChannel":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    const/4 v8, 0x7

    new-instance v7, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v2, v7

    move v5, v1

    move-object/from16 v6, p1

    move-object v14, v7

    move-object/from16 v7, p2

    move v0, v8

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v15, v0, v14, v2}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->sendEvent(ILjava/lang/Object;Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;)V

    .line 53
    .end local v15    # "moduleChannel":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not obtain own identity! Ignoring user consent for EULA!"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return v1
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accept"    # Ljava/lang/String;
    .param p4, "reject"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 62
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 64
    .local v1, "userAccept":Z
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->getOwnIdentity()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "ownIdentity":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 66
    const-class v2, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 66
    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object v11

    .line 68
    .local v11, "moduleChannel":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    const/4 v12, 0x7

    new-instance v13, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v2, v13

    move v5, v1

    move-object v6, p1

    move-object/from16 v7, p2

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v11, v12, v13, v10}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->sendEvent(ILjava/lang/Object;Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;)V

    .line 72
    .end local v11    # "moduleChannel":Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;
    goto :goto_0

    .line 73
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not obtain own identity! Ignoring user consent for EULA!"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return v1
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "oldMsisdn"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextCancel()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getNextCancel()Z

    move-result v0

    return v0
.end method
