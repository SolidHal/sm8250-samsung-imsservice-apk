.class public Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
.super Ljava/lang/Object;
.source "ResipSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsMessage"
.end annotation


# instance fields
.field callId:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field errorCode:I

.field isDeliveryReport:Z

.field localuri:Ljava/lang/String;

.field msgId:I

.field pdu:[B

.field smsc:Ljava/lang/String;

.field ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;)V
    .locals 0
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "localuri"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "pdu"    # [B
    .param p6, "msgId"    # I
    .param p7, "isDeliveryReport"    # Z
    .param p8, "callId"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->smsc:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->localuri:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->contentType:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->pdu:[B

    .line 93
    iput p6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    .line 94
    iput-boolean p7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isDeliveryReport:Z

    .line 95
    iput-object p8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->callId:Ljava/lang/String;

    .line 96
    return-void
.end method
