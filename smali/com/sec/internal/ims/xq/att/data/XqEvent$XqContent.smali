.class public Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;
.super Ljava/lang/Object;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/xq/att/data/XqEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XqContent"
.end annotation


# instance fields
.field intVal:I

.field strVal:Ljava/lang/String;

.field type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "intVal"    # I
    .param p3, "strVal"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 54
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 52
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 49
    goto :goto_0

    .line 45
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 46
    goto :goto_0

    .line 42
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 43
    nop

    .line 57
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    .line 58
    iput-object p3, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getIntVal()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    return v0
.end method

.method public getStrVal()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object v0
.end method

.method public hasIntVal()Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStrVal()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
