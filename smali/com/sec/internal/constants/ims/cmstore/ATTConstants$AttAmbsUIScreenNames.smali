.class public final enum Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
.super Ljava/lang/Enum;
.source "ATTConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/ATTConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttAmbsUIScreenNames"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum DontTurnOn_PrmptMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum NotDefault_PrmptMsg12:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Provisioning_PrmptMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum StopBackup_PrmptMsg13:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum StopConfirmation_PrmptMsg14:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Synchronizing_PrmptMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 63
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "NewUserOptIn_PrmptMsg1"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 64
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "ExistingUserOptInWithTerms_PrmptMsg3"

    const/4 v3, 0x1

    const/16 v4, 0x67

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 65
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "ExistingUserOptInWoTerms_PrmpMsg4"

    const/4 v4, 0x2

    const/16 v5, 0x68

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 66
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "SteadyState_PrmptMsg5"

    const/4 v5, 0x3

    const/16 v6, 0x69

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 67
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "Synchronizing_PrmptMsg6"

    const/4 v6, 0x4

    const/16 v7, 0x6a

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Synchronizing_PrmptMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 68
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "DontTurnOn_PrmptMsg7"

    const/4 v7, 0x5

    const/16 v8, 0x6b

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->DontTurnOn_PrmptMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 69
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "Provisioning_PrmptMsg8"

    const/4 v8, 0x6

    const/16 v9, 0x6c

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Provisioning_PrmptMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 70
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "Settings_PrmptMsg9"

    const/4 v9, 0x7

    const/16 v10, 0x6d

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 71
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "Settings_PrmptMsg10"

    const/16 v10, 0x8

    const/16 v11, 0x64

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 72
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "Settings_PrmptMsg11"

    const/16 v11, 0x9

    const/16 v12, 0x6f

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 73
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "NotDefault_PrmptMsg12"

    const/16 v12, 0xa

    const/16 v13, 0x70

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NotDefault_PrmptMsg12:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 74
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "StopBackup_PrmptMsg13"

    const/16 v13, 0xb

    const/16 v14, 0x71

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackup_PrmptMsg13:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 75
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "StopConfirmation_PrmptMsg14"

    const/16 v14, 0xc

    const/16 v15, 0x72

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopConfirmation_PrmptMsg14:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 77
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "EligibilityError_ErrMsg1"

    const/16 v15, 0xd

    const/16 v14, 0xc9

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 78
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "AuthenticationError_ErrMsg2"

    const/16 v14, 0xe

    const/16 v15, 0xca

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 79
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "ProvisioningError_ErrMsg4"

    const/16 v15, 0xf

    const/16 v14, 0xcc

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 80
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "SteadyStateError_ErrMsg5"

    const/16 v14, 0x10

    const/16 v15, 0xcd

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 81
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "MsisdnEntry_ErrMsg6"

    const/16 v15, 0x11

    const/16 v14, 0xce

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 82
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "SteadyStateError_ErrMsg7"

    const/16 v14, 0x12

    const/16 v15, 0xcf

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 83
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "ProvisioningBlockedError_ErrMsg8"

    const/16 v15, 0x13

    const/16 v14, 0xd0

    invoke-direct {v0, v1, v15, v14}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 84
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "StopBackupError_ErrMsg10"

    const/16 v14, 0x14

    const/16 v15, 0xd2

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 62
    const/16 v1, 0x15

    new-array v1, v1, [Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v15, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Synchronizing_PrmptMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->DontTurnOn_PrmptMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Provisioning_PrmptMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NotDefault_PrmptMsg12:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackup_PrmptMsg13:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopConfirmation_PrmptMsg14:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->mId:I

    .line 90
    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .locals 6
    .param p0, "id"    # I

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "scrnName":Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->values()[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 101
    .local v4, "r":Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    iget v5, v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->mId:I

    if-ne v5, p0, :cond_0

    .line 102
    move-object v0, v4

    .line 103
    goto :goto_1

    .line 100
    .end local v4    # "r":Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .locals 1

    .line 62
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->mId:I

    return v0
.end method
