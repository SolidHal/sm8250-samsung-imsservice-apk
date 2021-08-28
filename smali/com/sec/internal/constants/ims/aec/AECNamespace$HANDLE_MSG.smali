.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$HANDLE_MSG;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HANDLE_MSG"
.end annotation


# static fields
.field public static final COMPLETED_EAP_CHALLENGE_RESP:I = 0x3ed

.field public static final COMPLETED_WORKFLOW:I = 0x3eb

.field public static final CONNECTED_NETWORK:I = 0x3f0

.field public static final CONNECTIVITY_CHANGE:I = 0x3

.field public static final ENTITLEMENT_COMPLETE:I = 0x5

.field public static final ENTITLEMENT_START:I = 0x4

.field public static final ENTITLEMENT_STOP:I = 0x6

.field public static final INIT_WORKFLOW:I = 0x0

.field public static final RECEIVED_FCM_NOTIFICATION:I = 0x7

.field public static final RECEIVED_SMS_NOTIFICATION:I = 0x8

.field public static final REQUEST_FCM_TOKEN:I = 0x3ee

.field public static final REQUEST_NETWORK:I = 0x3ef

.field public static final SIM_READY:I = 0x1

.field public static final SIM_REMOVED:I = 0x2

.field public static final START_WORKFLOW:I = 0x3e9

.field public static final STOP_WORKFLOW:I = 0x3ea

.field public static final TOKEN_TIMEOUT:I = 0x3f3

.field public static final UNREGISTER_NETWORK_CALLBACK:I = 0x3f1

.field public static final VERSION_TIMEOUT:I = 0x3f2

.field public static final WAIT_EAP_CHALLENGE_RESP:I = 0x3ec


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
