.class public Lcom/sec/internal/helper/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/sec/internal/helper/IState;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 37
    return-void
.end method

.method public exit()V
    .locals 0

    .line 44
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 70
    .local v1, "lastDollar":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    const/4 v0, 0x0

    return v0
.end method
