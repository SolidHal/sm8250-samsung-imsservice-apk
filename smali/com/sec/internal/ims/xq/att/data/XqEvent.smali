.class public Lcom/sec/internal/ims/xq/att/data/XqEvent;
.super Ljava/lang/Object;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;,
        Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;,
        Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    }
.end annotation


# instance fields
.field private mContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;",
            ">;"
        }
    .end annotation
.end field

.field private mtrips:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getMContent(I)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;
    .locals 1
    .param p1, "idx"    # I

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;

    return-object v0
.end method

.method public getMContentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMtrip()Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mtrips:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object v0
.end method

.method public setContent(IILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "intVal"    # I
    .param p3, "strVal"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public setXqMtrips(I)V
    .locals 1
    .param p1, "value"    # I

    .line 96
    invoke-static {p1}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->castToType(I)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mtrips:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    .line 97
    return-void
.end method
