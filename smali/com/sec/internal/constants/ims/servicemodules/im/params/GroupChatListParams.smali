.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;
.super Ljava/lang/Object;
.source "GroupChatListParams.java"


# instance fields
.field private final increaseMode:Z

.field private final mOwnImsi:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "increaseMode"    # Z
    .param p3, "ownImsi"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->version:I

    .line 21
    iput-boolean p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->increaseMode:Z

    .line 22
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->mOwnImsi:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getIncreaseMode()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->increaseMode:Z

    return v0
.end method

.method public getOwnImsi()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->mOwnImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->version:I

    return v0
.end method
