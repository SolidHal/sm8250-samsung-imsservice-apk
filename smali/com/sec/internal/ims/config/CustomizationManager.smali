.class public Lcom/sec/internal/ims/config/CustomizationManager;
.super Ljava/lang/Object;
.source "CustomizationManager.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-class v0, Lcom/sec/internal/ims/config/CustomizationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    .line 53
    const-string v1, "init CustomizationManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method public getConfigManager(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .locals 18
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "phoneId"    # I
    .param p5, "hasChatbotService"    # Z

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {p4 .. p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 58
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v1, 0x0

    invoke-static {v8, v10, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(Landroid/content/Context;II)I

    move-result v12

    .line 60
    .local v12, "autoconfigSource":I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_0

    .line 61
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "get config from local file."

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 63
    :cond_0
    const/4 v2, 0x3

    if-ne v12, v2, :cond_1

    .line 64
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "get config from SDcard."

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 68
    :cond_1
    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v10}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "rcsProfile":Ljava/lang/String;
    const/high16 v2, 0x13010000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",RCSP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 71
    invoke-static {v13}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "WorkflowRjil"

    const-string v4, "WorkflowCmcc"

    if-eqz v2, :cond_b

    .line 72
    invoke-static {v8, v10}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "rcsAs":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v14

    .line 74
    .local v14, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v14, :cond_2

    invoke-interface {v14, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    move v15, v2

    .line 75
    .local v15, "isRemoteConfigNeeded":Z
    const-string/jumbo v2, "rcs_support_mvs_auth"

    invoke-static {v10, v2, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v6

    .line 77
    .local v6, "isMvsAuthSupported":Z
    const-string v1, "jibe"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 78
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowJibe"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v17, v12

    move v12, v6

    .end local v6    # "isMvsAuthSupported":Z
    .local v12, "isMvsAuthSupported":Z
    .local v17, "autoconfigSource":I
    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 77
    .end local v17    # "autoconfigSource":I
    .restart local v6    # "isMvsAuthSupported":Z
    .local v12, "autoconfigSource":I
    :cond_3
    move/from16 v17, v12

    move v12, v6

    .line 80
    .end local v6    # "isMvsAuthSupported":Z
    .local v12, "isMvsAuthSupported":Z
    .restart local v17    # "autoconfigSource":I
    const-string/jumbo v1, "sec"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowSec"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 83
    :cond_4
    if-eqz v15, :cond_6

    .line 84
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkflowVzw: isMvsAuthSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    if-eqz v12, :cond_5

    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    goto :goto_1

    :cond_5
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    :goto_1
    return-object v16

    .line 88
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowBell"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 91
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v10, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 94
    :cond_8
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 95
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v10, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 97
    :cond_9
    const-string v1, "interop"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 98
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowInterop"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 101
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowUp"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    new-instance v16, Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v16

    .line 107
    .end local v7    # "rcsAs":Ljava/lang/String;
    .end local v14    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v15    # "isRemoteConfigNeeded":Z
    .end local v17    # "autoconfigSource":I
    .local v12, "autoconfigSource":I
    :cond_b
    move/from16 v17, v12

    .end local v12    # "autoconfigSource":I
    .restart local v17    # "autoconfigSource":I
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 108
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v10, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 112
    :cond_c
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 113
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v10, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 117
    :cond_d
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 118
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 119
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Use local config for SoftPhone"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 122
    :cond_e
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowAtt"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 127
    :cond_f
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 128
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowPrimaryDevice for Telstra"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    new-instance v12, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;

    invoke-direct {v6, v8, v9, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object v12

    .line 133
    :cond_10
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 134
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowTmo"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    new-instance v7, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    return-object v7

    .line 138
    :cond_11
    iget-object v1, v0, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "WorkflowPrimaryDevice"

    invoke-static {v1, v10, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    new-instance v12, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v6, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;

    invoke-direct {v6, v8, v9, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object v12
.end method
