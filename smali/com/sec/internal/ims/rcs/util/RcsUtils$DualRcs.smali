.class public Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/rcs/util/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualRcs"
.end annotation


# static fields
.field private static mIsDualRcsReg:Z

.field private static mIsDualRcsSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsReg:Z

    .line 53
    sput-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dualRcsPolicyCase(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 131
    const-string v0, "dual_rcs_policy"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "dualRcsPolicy":I
    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 140
    .local v3, "counterPhoneId":I
    :goto_0
    if-nez v0, :cond_1

    .line 141
    return v1

    .line 142
    :cond_1
    if-ne v0, v2, :cond_3

    .line 143
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 144
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    return v2

    .line 147
    :cond_2
    return v1

    .line 149
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 150
    invoke-static {p0, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    invoke-static {v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    return v2

    .line 154
    :cond_4
    return v1

    .line 157
    :cond_5
    return v2

    .line 159
    :cond_6
    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 160
    return v2

    .line 163
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dualRcsPolicyCase: Invalid policy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1
.end method

.method public static isDualRcsReg()Z
    .locals 3

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualRcsReg: mIsDualRcsReg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsReg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsReg:Z

    return v0
.end method

.method public static isDualRcsSettings()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return v0
.end method

.method public static isRegAllowed(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 114
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 118
    .local v0, "ddsPhoneId":I
    if-ne p1, v0, :cond_0

    .line 119
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const/4 v1, 0x0

    return v1

    .line 127
    :cond_1
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static refreshDualRcsReg(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 65
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsSettings(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    invoke-static {p0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->updateDualRcsRegi(Landroid/content/Context;Z)V

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 71
    invoke-static {p0, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    invoke-static {p0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->updateDualRcsRegi(Landroid/content/Context;Z)V

    .line 73
    return-void

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->updateDualRcsRegi(Landroid/content/Context;Z)V

    .line 77
    return-void
.end method

.method public static refreshDualRcsSettings(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    .line 93
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 97
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 98
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 96
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .restart local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_2
    :goto_1
    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    .line 100
    return-void

    .line 104
    .end local v0    # "phoneId":I
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "phoneId":I
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 105
    invoke-static {p0, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    .line 107
    return-void

    .line 104
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    .end local v0    # "phoneId":I
    :cond_5
    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    .line 111
    return-void
.end method

.method private static updateDualRcsRegi(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "isDualRcsReg"    # Z

    .line 80
    sget-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsReg:Z

    if-eq v0, p1, :cond_0

    .line 81
    sput-boolean p1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsReg:Z

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 84
    :cond_0
    return-void
.end method
