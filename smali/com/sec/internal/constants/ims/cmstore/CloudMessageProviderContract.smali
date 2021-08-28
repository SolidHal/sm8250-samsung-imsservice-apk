.class public final Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract;
.super Ljava/lang/Object;
.source "CloudMessageProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$JsonData;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$MultiLineStatus;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$FAXReceipents;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$FAXMessages;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$VVMPin;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$VVMGreetingColumns;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$VVMMessageColumns;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$VVMAccountInfoColumns;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$BufferCallLog;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$BufferDBMMSpart;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$BufferDBMMSaddr;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$BufferDBMMSpdu;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$BufferDBSMS;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$BufferDBExtensionBase;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$DataTypes;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$CmsEventTypeValue;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$SimStatusValue;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$JsonParamTags;,
        Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$ApplicationTypes;
    }
.end annotation


# static fields
.field public static final ALL_MMSPDU:I = 0x20

.field public static final ALL_SMS:I = 0x1f

.field public static final CALL_LOG:I = 0x10

.field public static final CONTENTPRDR_ALL_MMSPDUMESSAGE:Ljava/lang/String; = "allmmspdumessage"

.field public static final CONTENTPRDR_ALL_SMSMESSAGES:Ljava/lang/String; = "allsmsmessages"

.field public static final CONTENTPRDR_CALLLOG:Ljava/lang/String; = "calllog"

.field public static final CONTENTPRDR_FAX:Ljava/lang/String; = "faxmessages"

.field public static final CONTENTPRDR_LATESTMESSAGE:Ljava/lang/String; = "latestmessage"

.field public static final CONTENTPRDR_MIGRATE_SUCCESS:Ljava/lang/String; = "migrate_success"

.field public static final CONTENTPRDR_MMSADDRMESSAGES:Ljava/lang/String; = "mmsaddrmessages"

.field public static final CONTENTPRDR_MMSPARTMESSAGES_PARTID:Ljava/lang/String; = "mmspartmessages_partid"

.field public static final CONTENTPRDR_MMSPARTMESSAGES_PDUID:Ljava/lang/String; = "mmspartmessages"

.field public static final CONTENTPRDR_MMSPDUMESSAGE:Ljava/lang/String; = "mmspdumessage"

.field public static final CONTENTPRDR_MULTILINESTATUS:Ljava/lang/String; = "multilinestatus"

.field public static final CONTENTPRDR_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final CONTENTPRDR_PENDING_CALLLOG:Ljava/lang/String; = "pendingcalllog"

.field public static final CONTENTPRDR_PENDING_FAX:Ljava/lang/String; = "pendingfaxmessages"

.field public static final CONTENTPRDR_PENDING_MMSPDUMESSAGE:Ljava/lang/String; = "pendingmmspdumessage"

.field public static final CONTENTPRDR_PENDING_RCSCHATMESSAGE:Ljava/lang/String; = "pendingrcschatmessage"

.field public static final CONTENTPRDR_PENDING_RCSFTMESSAGE:Ljava/lang/String; = "pendingrcsftmessage"

.field public static final CONTENTPRDR_PENDING_SMSMESSAGES:Ljava/lang/String; = "pendingsmsmessages"

.field public static final CONTENTPRDR_PENDING_VVMMESSAGES:Ljava/lang/String; = "pendingvvmmessages"

.field public static final CONTENTPRDR_RCSCHATMESSAGE:Ljava/lang/String; = "rcschatmessage"

.field public static final CONTENTPRDR_RCSFTMESSAGE:Ljava/lang/String; = "rcsftmessage"

.field public static final CONTENTPRDR_RCSMESSAGEIMDN:Ljava/lang/String; = "rcsmessageimdn"

.field public static final CONTENTPRDR_RCSMESSAGES:Ljava/lang/String; = "rcsmessages"

.field public static final CONTENTPRDR_RCSPARTICIPANTS:Ljava/lang/String; = "rcsparticipants"

.field public static final CONTENTPRDR_RCSSESSION:Ljava/lang/String; = "rcssession"

.field public static final CONTENTPRDR_SMSMESSAGES:Ljava/lang/String; = "smsmessages"

.field public static final CONTENTPRDR_SUMMARYTABLE:Ljava/lang/String; = "summarytable"

.field public static final CONTENTPRDR_USER_DEBUG_FLAG:Ljava/lang/String; = "userdebugflag"

.field public static final CONTENTPRDR_VVMGREETING:Ljava/lang/String; = "vvmgreeting"

.field public static final CONTENTPRDR_VVMMESSAGES:Ljava/lang/String; = "vvmmessages"

.field public static final CONTENTPRDR_VVMPIN:Ljava/lang/String; = "vvmpin"

.field public static final CONTENTPRDR_VVMPROFILE:Ljava/lang/String; = "vvmprofile"

.field public static final FAX_MESSAGE:I = 0x15

.field public static final FAX_RECEIVER:I = 0x16

.field public static final LATEST_MESSAGE:I = 0x21

.field public static final MIGRATE_SUCCESS:I = 0x23

.field public static final MMS_ADDR_MESSAGES:I = 0x5

.field public static final MMS_PART_ID:I = 0x8

.field public static final MMS_PART_MESSAGES:I = 0x6

.field public static final MMS_PDU_MESSAGES:I = 0x4

.field public static final MULTI_LINE_STATUS:I = 0x17

.field public static final NONE:I = 0x0

.field public static final PENDING_CALLLOG:I = 0x1e

.field public static final PENDING_CHAT:I = 0x1a

.field public static final PENDING_FAX:I = 0x1d

.field public static final PENDING_FT:I = 0x1b

.field public static final PENDING_MMS:I = 0x19

.field public static final PENDING_SMS:I = 0x18

.field public static final PENDING_VVM:I = 0x1c

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cmstore"

.field public static final RCS_GROUP_STATE:I = 0x22

.field public static final RCS_MESSAGES:I = 0x1

.field public static final RCS_MESSAGES_CHAT:I = 0xb

.field public static final RCS_MESSAGES_FT:I = 0xc

.field public static final RCS_MESSAGES_IMDN:I = 0xd

.field public static final RCS_MESSAGES_QUERY_USEIMDN:I = 0xf

.field public static final RCS_MESSAGES_SLM:I = 0xe

.field public static final RCS_MESSAGE_ID:I = 0x9

.field public static final RCS_PARTICIPANT:I = 0x2

.field public static final RCS_SESSION:I = 0xa

.field public static final SMS_MESSAGES:I = 0x3

.field public static final SUMMARY_TABLE:I = 0x7

.field public static final USER_DEBUG_FLAG:I = 0x63

.field public static final VVM_GREETING:I = 0x12

.field public static final VVM_MESSAGES:I = 0x11

.field public static final VVM_PIN:I = 0x13

.field public static final VVM_PROFILE:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
