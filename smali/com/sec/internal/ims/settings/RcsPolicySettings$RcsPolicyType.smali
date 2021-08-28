.class public final enum Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
.super Ljava/lang/Enum;
.source "RcsPolicySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/RcsPolicySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RcsPolicyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;


# instance fields
.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 50
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "DEFAULT_RCS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "CMCC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 53
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "RJIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 54
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "SINGTEL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 55
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "VODAFONE_IN_UP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 57
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TMOBILE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 58
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "VODA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 59
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "ORANGE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 60
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TELENOR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 61
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TELIA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 62
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TELSTRA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 64
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "ATT"

    const/16 v13, 0xb

    const-string v14, "ATT"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 65
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TMOUS"

    const/16 v13, 0xc

    const-string v14, "TMOUS"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 66
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "VZW"

    const/16 v13, 0xd

    const-string v14, "VZW"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 67
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "SPR"

    const/16 v13, 0xe

    const-string v14, "SPR"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 68
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "USCC"

    const/16 v13, 0xf

    const-string v14, "USCC"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 69
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "BMC"

    const/16 v13, 0x10

    const-string v14, "BMC"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 70
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "BMC_UP"

    const/16 v13, 0x11

    const-string v14, "BMC_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 72
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TCE"

    const/16 v13, 0x12

    const-string v14, "TCE"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "DEFAULT_UP"

    const/16 v13, 0x13

    const-string v14, "DEFAULT_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 77
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "JIBE_UP"

    const/16 v13, 0x14

    const-string v14, "JIBE_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 78
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "SEC_UP"

    const/16 v13, 0x15

    const-string v14, "SEC_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "KT_UP"

    const/16 v13, 0x16

    const-string v14, "KT_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 81
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "RJIL_UP"

    const/16 v13, 0x17

    const-string v14, "RJIL_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 83
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "ORANGE_UP"

    const/16 v13, 0x18

    const-string v14, "ORANGE_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 84
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "VODA_UP"

    const/16 v13, 0x19

    const-string v14, "VODA_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 85
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "SWISSCOM_UP"

    const/16 v13, 0x1a

    const-string v14, "SWISSCOM_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 86
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "TMOBILE_UP"

    const/16 v13, 0x1b

    const-string v14, "TMOBILE_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 88
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "SPR_UP"

    const/16 v13, 0x1c

    const-string v14, "SPR_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "VZW_UP"

    const/16 v13, 0x1d

    const-string v14, "VZW_UP"

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 48
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    sget-object v13, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v13, v1, v2

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->mTypeName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    if-nez p0, :cond_0

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning: RcsPolicyType invalid parameter, name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->values()[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 111
    .local v3, "type":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    iget-object v4, v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->mTypeName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    return-object v3

    .line 110
    .end local v3    # "type":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Warning: RcsPolicyType "

    if-eqz v0, :cond_3

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not defined use DEFAULT_UP"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 120
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not defined use DEFAULT_RCS"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public varargs isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z
    .locals 4
    .param p1, "types"    # [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 127
    .local v3, "type":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    if-ne p0, v3, :cond_0

    .line 128
    const/4 v0, 0x1

    return v0

    .line 126
    .end local v3    # "type":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return v1
.end method

.method public isUp()Z
    .locals 2

    .line 102
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
