.class public Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;
.super Ljava/lang/Object;
.source "PreciseDataConnectionStateWrapper.java"


# instance fields
.field private mState:Landroid/telephony/PreciseDataConnectionState;


# direct methods
.method public constructor <init>(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0, p1}, Landroid/telephony/PreciseDataConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDataConnectionApnTypeBitMask()I
    .locals 4

    .line 53
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/PreciseDataConnectionState;

    const-string v2, "getDataConnectionApnTypeBitMask"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 55
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 58
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public getDataConnectionFailCause()I
    .locals 4

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->getLastCauseCode()I

    move-result v0

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/PreciseDataConnectionState;

    const-string v2, "getDataConnectionFailCause"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 43
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 46
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->mState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0}, Landroid/telephony/PreciseDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
