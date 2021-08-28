.class public Lcom/sec/internal/omanetapi/nms/data/AttributeContent;
.super Ljava/lang/Object;
.source "AttributeContent.java"


# instance fields
.field public clientCorrelator:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public direction:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public messageContext:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public miMeVersion:Ljava/lang/String;

.field public reportRequested:Ljava/lang/String;

.field public to:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "messageContext"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "mimeVersion"    # Ljava/lang/String;
    .param p5, "direction"    # Ljava/lang/String;
    .param p6, "clientCorrelator"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "to"    # [Ljava/lang/String;
    .param p9, "contentType"    # Ljava/lang/String;
    .param p10, "reportRequested"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->date:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->messageContext:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->messageId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->miMeVersion:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->direction:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->clientCorrelator:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->from:Ljava/lang/String;

    .line 26
    array-length v0, p8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->to:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p8

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->to:[Ljava/lang/String;

    aget-object v2, p8, v0

    aput-object v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "i":I
    :cond_0
    iput-object p9, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->contentType:Ljava/lang/String;

    .line 31
    iput-object p10, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->reportRequested:Ljava/lang/String;

    .line 32
    return-void
.end method
