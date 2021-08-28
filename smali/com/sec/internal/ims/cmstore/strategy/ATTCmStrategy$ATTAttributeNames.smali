.class public Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;
.super Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;
.source "ATTCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ATTAttributeNames"
.end annotation


# static fields
.field public static call_disposition:Ljava/lang/String;

.field public static call_duration:Ljava/lang/String;

.field public static contribution_id:Ljava/lang/String;

.field public static conversation_id:Ljava/lang/String;

.field public static disposition_original_message_iD:Ljava/lang/String;

.field public static disposition_original_to:Ljava/lang/String;

.field public static disposition_status:Ljava/lang/String;

.field public static disposition_type:Ljava/lang/String;

.field public static inreplyto_contribution_Id:Ljava/lang/String;

.field public static is_cpm_group:Ljava/lang/String;

.field public static is_open_group:Ljava/lang/String;

.field public static multipartContentType:Ljava/lang/String;

.field public static udh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-string v0, "Contribution-ID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->contribution_id:Ljava/lang/String;

    .line 90
    const-string v0, "Conversation-ID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->conversation_id:Ljava/lang/String;

    .line 91
    const-string v0, "InReplyTo-Contribution-ID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    .line 92
    const-string v0, "UDH"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->udh:Ljava/lang/String;

    .line 93
    const-string v0, "CallDisposition"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_disposition:Ljava/lang/String;

    .line 94
    const-string v0, "CallDuration"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_duration:Ljava/lang/String;

    .line 95
    const-string v0, "DispositionType"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_type:Ljava/lang/String;

    .line 96
    const-string v0, "DispositionStatus"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_status:Ljava/lang/String;

    .line 97
    const-string v0, "DispositionOriginalMessageID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    .line 98
    const-string v0, "DispositionOriginalTo"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_to:Ljava/lang/String;

    .line 99
    const-string v0, "Is-OPEN-Group"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_open_group:Ljava/lang/String;

    .line 100
    const-string v0, "Is-CPM-Group"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_cpm_group:Ljava/lang/String;

    .line 101
    const-string v0, "MultipartContentType"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->multipartContentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;-><init>()V

    return-void
.end method
