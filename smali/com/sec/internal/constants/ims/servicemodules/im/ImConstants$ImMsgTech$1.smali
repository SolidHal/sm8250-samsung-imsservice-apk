.class final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech$1;
.super Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;-><init>(Ljava/lang/String;ILcom/sec/internal/constants/ims/servicemodules/im/ImConstants$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "SIMPLE"

    return-object v0
.end method
