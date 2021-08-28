.class public Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;
.super Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;
.source "TMOCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmoAttributeNames"
.end annotation


# static fields
.field public static Content_Duration:Ljava/lang/String;

.field public static EmailAddress:Ljava/lang/String;

.field public static VVMOn:Ljava/lang/String;

.field public static call_disposition:Ljava/lang/String;

.field public static call_duration:Ljava/lang/String;

.field public static call_starttimestamp:Ljava/lang/String;

.field public static call_type:Ljava/lang/String;

.field public static client_correlator:Ljava/lang/String;

.field public static content_type:Ljava/lang/String;

.field public static contribution_id:Ljava/lang/String;

.field public static conversation_id:Ljava/lang/String;

.field public static disposition_original_message_iD:Ljava/lang/String;

.field public static disposition_original_to:Ljava/lang/String;

.field public static disposition_status:Ljava/lang/String;

.field public static disposition_type:Ljava/lang/String;

.field public static inreplyto_contribution_Id:Ljava/lang/String;

.field public static is_cpm_group:Ljava/lang/String;

.field public static message_id:Ljava/lang/String;

.field public static mime_version:Ljava/lang/String;

.field public static multipartContentType:Ljava/lang/String;

.field public static old_pwd:Ljava/lang/String;

.field public static participating_device:Ljava/lang/String;

.field public static pwd:Ljava/lang/String;

.field public static report_requested:Ljava/lang/String;

.field public static udh:Ljava/lang/String;

.field public static x_cns_greeting_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-string v0, "Contribution-ID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->contribution_id:Ljava/lang/String;

    .line 80
    const-string v0, "Conversation-ID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->conversation_id:Ljava/lang/String;

    .line 81
    const-string v0, "InReplyTo-Contribution-ID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    .line 82
    const-string v0, "UDH"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->udh:Ljava/lang/String;

    .line 83
    const-string v0, "CallDisposition"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_disposition:Ljava/lang/String;

    .line 84
    const-string v0, "Call-Duration"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_duration:Ljava/lang/String;

    .line 85
    const-string v0, "call-timestamp"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_starttimestamp:Ljava/lang/String;

    .line 86
    const-string v0, "Call-Type"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->call_type:Ljava/lang/String;

    .line 87
    const-string v0, "DispositionType"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_type:Ljava/lang/String;

    .line 88
    const-string v0, "DispositionStatus"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_status:Ljava/lang/String;

    .line 89
    const-string v0, "DispositionOriginalMessageID"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    .line 90
    const-string v0, "DispositionOriginalTo"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->disposition_original_to:Ljava/lang/String;

    .line 91
    const-string v0, "Is-CPM-Group"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->is_cpm_group:Ljava/lang/String;

    .line 92
    const-string v0, "MultipartContentType"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->multipartContentType:Ljava/lang/String;

    .line 93
    const-string v0, "Message-Id"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->message_id:Ljava/lang/String;

    .line 94
    const-string v0, "MIME-Version"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->mime_version:Ljava/lang/String;

    .line 95
    const-string v0, "ClientCorrelator"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->client_correlator:Ljava/lang/String;

    .line 96
    const-string v0, "ReportRequested"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->report_requested:Ljava/lang/String;

    .line 97
    const-string v0, "Content-Type"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->content_type:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "participating-device"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->participating_device:Ljava/lang/String;

    .line 99
    const-string v0, "PWD"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->pwd:Ljava/lang/String;

    .line 100
    const-string v0, "OLD_PWD"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->old_pwd:Ljava/lang/String;

    .line 101
    const-string v0, "X-CNS-Greeting-Type"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->x_cns_greeting_type:Ljava/lang/String;

    .line 102
    const-string v0, "Content-Duration"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->Content_Duration:Ljava/lang/String;

    .line 103
    const-string v0, "EmailAddress"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->EmailAddress:Ljava/lang/String;

    .line 104
    const-string v0, "VVMOn"

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoAttributeNames;->VVMOn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;-><init>()V

    return-void
.end method
