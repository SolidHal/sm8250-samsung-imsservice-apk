.class public Lcom/sec/internal/constants/ims/cmstore/ATTConstants$ATTMessageContextValues;
.super Lcom/sec/internal/constants/ims/cmstore/data/MessageContextValues;
.source "ATTConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/ATTConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ATTMessageContextValues"
.end annotation


# static fields
.field public static final chatMessage:Ljava/lang/String; = "chat-message"

.field public static final fileMessage:Ljava/lang/String; = "file-message"

.field public static final imdnMessage:Ljava/lang/String; = "imdn-message"

.field public static final standaloneMessage:Ljava/lang/String; = "standalone-message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/MessageContextValues;-><init>()V

    return-void
.end method
