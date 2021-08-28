.class public Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$State;
.super Ljava/lang/Object;
.source "SmsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final MO_RECEIVING_202_ACCEPTED:I = 0x66

.field public static final MO_RECEIVING_CALLID:I = 0x65

.field public static final MO_SENDING_START:I = 0x64

.field public static final MT_RECEIVING_DELIVER_REPORT_ACK:I = 0x6a

.field public static final MT_RECEIVING_INCOMING_SMS:I = 0x67

.field public static final MT_RECEIVING_STATUS_REPORT:I = 0x68

.field public static final MT_SENDING_DELIVER_REPORT:I = 0x69

.field public static final NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
